import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/local/key_value_store.dart';
import '../../data/models/dokter.dart';
import '../../data/providers.dart';

part 'auth_controller.freezed.dart';

enum AuthStatus {
  /// Harus masuk dengan kata sandi.
  keluar,

  /// Perangkat diingat; buka dengan PIN/biometrik.
  terkunci,

  /// Sudah masuk.
  masuk,
}

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.keluar) AuthStatus status,

    /// Dokter yang masuk / dokter pemilik perangkat saat terkunci.
    Dokter? dokter,

    /// PIN lokal sudah dibuat di perangkat ini.
    @Default(false) bool punyaPin,

    /// Preferensi buka dengan biometrik (lokal).
    @Default(false) bool biometrik,

    /// Baru masuk dengan "Ingat perangkat" dan belum punya PIN.
    @Default(false) bool perluBuatPin,

    @Default(0) int gagalPin,

    /// Sesi dikunci karena tidak aktif: PIN tampil di atas layar terakhir (navigasi tetap).
    @Default(false) bool sesiTerkunci,

    /// Pesan untuk layar masuk, mis. setelah terlalu banyak percobaan PIN.
    String? pesan,
  }) = _AuthState;
}

final authControllerProvider = NotifierProvider<AuthController, AuthState>(AuthController.new);

/// Sesi lokal: masuk, PIN, biometrik, keluar. Tidak menulis apa pun ke Medinfras.
class AuthController extends Notifier<AuthState> {
  /// [awal] hanya untuk test.
  AuthController([this._awal]);

  final AuthState? _awal;

  static const panjangPin = 6;
  static const maksPercobaanPin = 5;

  static const _kToken = 'token';
  static const _kDokter = 'dokter';
  static const _kPinHash = 'pin_hash';
  static const _kPinSalt = 'pin_salt';
  static const _kBiometrik = 'biometrik';

  /// Token sesi di memori; disimpan ke perangkat hanya bila "Ingat perangkat".
  String? _token;
  String? get token => _token;

  @override
  AuthState build() => _awal ?? const AuthState();

  KeyValueStore get _store => ref.read(keyValueStoreProvider);

  /// Dipanggil sekali saat aplikasi dibuka.
  Future<void> muat() async {
    final token = await _store.read(_kToken);
    final dokter = await _store.read(_kDokter);
    final pin = await _store.read(_kPinHash);
    if (token == null || dokter == null || pin == null) {
      await _store.deleteAll();
      state = const AuthState();
      return;
    }
    _token = token;
    state = AuthState(
      status: AuthStatus.terkunci,
      dokter: Dokter.fromJson(jsonDecode(dokter) as Map<String, dynamic>),
      punyaPin: true,
      biometrik: await _store.read(_kBiometrik) == '1',
    );
  }

  /// Melempar `LoginGagal` bila ditolak.
  Future<void> masuk(String kodeAtauEmail, String sandi, {required bool ingat}) async {
    final sesi = await ref.read(authRepositoryProvider).masuk(kodeAtauEmail, sandi);
    _token = sesi.token;

    var punyaPin = false;
    if (ingat) {
      final dokterLama = await _store.read(_kDokter);
      final sama = dokterLama != null && (jsonDecode(dokterLama) as Map<String, dynamic>)['kode'] == sesi.dokter.kode;
      if (!sama) await _store.deleteAll();
      await _store.write(_kToken, sesi.token);
      await _store.write(_kDokter, jsonEncode(sesi.dokter.toJson()));
      punyaPin = await _store.read(_kPinHash) != null;
    } else {
      await _store.deleteAll();
    }

    state = AuthState(
      status: AuthStatus.masuk,
      dokter: sesi.dokter,
      punyaPin: punyaPin,
      biometrik: punyaPin && await _store.read(_kBiometrik) == '1',
      perluBuatPin: ingat && !punyaPin,
    );
  }

  /// Simpan PIN baru (hash + salt).
  Future<void> buatPin(String pin) async {
    final salt = base64Encode(List<int>.generate(16, (_) => Random.secure().nextInt(256)));
    await _store.write(_kPinSalt, salt);
    await _store.write(_kPinHash, _hash(salt, pin));
    // PIN pertama: aktifkan biometrik bila ada. Ganti PIN: preferensi biometrik tetap.
    final biometrik = state.punyaPin ? state.biometrik : await ref.read(biometrikServiceProvider).tersedia();
    await _store.write(_kBiometrik, biometrik ? '1' : '0');
    state = state.copyWith(punyaPin: true, biometrik: biometrik, perluBuatPin: false);
  }

  /// Tidak membuat PIN: perangkat tidak diingat, berikutnya masuk dengan kata sandi.
  /// Saat mengubah PIN (sudah punya PIN), PIN lama tetap dipakai.
  Future<void> lewatiPin() async {
    if (!state.punyaPin) await _store.deleteAll();
    state = state.copyWith(perluBuatPin: false);
  }

  /// Buka layar buat PIN untuk mengganti PIN lokal.
  void mulaiUbahPin() {
    if (state.status == AuthStatus.masuk && state.punyaPin) state = state.copyWith(perluBuatPin: true);
  }

  /// Aktifkan/matikan buka dengan biometrik. Mengaktifkan harus lolos verifikasi dulu.
  /// `false` bila gagal diaktifkan.
  Future<bool> aturBiometrik(bool aktif) async {
    if (!state.punyaPin) return false;
    if (aktif) {
      final bio = ref.read(biometrikServiceProvider);
      if (!await bio.tersedia() || !await bio.verifikasi('Aktifkan masuk dengan biometrik')) return false;
    }
    await _store.write(_kBiometrik, aktif ? '1' : '0');
    state = state.copyWith(biometrik: aktif);
    return true;
  }

  /// `false` bila salah. Setelah [maksPercobaanPin] kali salah, sesi dihapus.
  Future<bool> bukaDenganPin(String pin) async {
    final salt = await _store.read(_kPinSalt);
    final hash = await _store.read(_kPinHash);
    if (salt != null && hash != null && _hash(salt, pin) == hash) {
      state = state.copyWith(status: AuthStatus.masuk, sesiTerkunci: false, gagalPin: 0, pesan: null);
      return true;
    }
    final gagal = state.gagalPin + 1;
    if (gagal >= maksPercobaanPin) {
      await keluar(pesan: 'Terlalu banyak percobaan PIN. Masuk dengan kata sandi.');
    } else {
      state = state.copyWith(gagalPin: gagal);
    }
    return false;
  }

  Future<bool> bukaDenganBiometrik() async {
    if (!state.biometrik) return false;
    final ok = await ref.read(biometrikServiceProvider).verifikasi('Buka CiputraCare Doctor');
    if (ok) state = state.copyWith(status: AuthStatus.masuk, sesiTerkunci: false, gagalPin: 0, pesan: null);
    return ok;
  }

  /// Kunci sesi setelah tidak aktif. Dengan PIN: PIN tampil di atas layar terakhir.
  /// Tanpa PIN (perangkat tidak diingat): sesi berakhir, masuk lagi dengan kata sandi.
  Future<void> kunci() async {
    if (state.status != AuthStatus.masuk || state.sesiTerkunci) return;
    if (state.punyaPin) {
      state = state.copyWith(sesiTerkunci: true, perluBuatPin: false);
    } else {
      await keluar(pesan: 'Sesi berakhir karena tidak aktif. Silakan masuk lagi.');
    }
  }

  /// Dari PIN sesi terkunci: pilih masuk dengan kata sandi (perangkat tetap diingat).
  void pakaiKataSandi() {
    state = state.copyWith(status: AuthStatus.terkunci, sesiTerkunci: false);
  }

  /// Hapus token, PIN, preferensi, dan cache data.
  Future<void> keluar({String? pesan}) async {
    _token = null;
    await _store.deleteAll();
    ref.invalidate(mockJsonSourceProvider);
    state = AuthState(pesan: pesan);
  }

  static String _hash(String salt, String pin) => sha256.convert(utf8.encode('$salt:$pin')).toString();
}
