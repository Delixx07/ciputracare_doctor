import 'package:ciputracare_doctor/data/local/key_value_store.dart';
import 'package:ciputracare_doctor/data/providers.dart';
import 'package:ciputracare_doctor/data/repositories/auth_repository.dart';
import 'package:ciputracare_doctor/features/auth/auth_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MemoryKeyValueStore store;
  late FakeBiometrik biometrik;

  ProviderContainer buat() {
    final c = ProviderContainer(
      overrides: [
        keyValueStoreProvider.overrideWithValue(store),
        biometrikServiceProvider.overrideWithValue(biometrik),
      ],
    );
    addTearDown(c.dispose);
    return c;
  }

  setUp(() {
    store = MemoryKeyValueStore();
    biometrik = FakeBiometrik();
  });

  test('kode salah → LoginGagal, tetap keluar', () async {
    final c = buat();
    await expectLater(
      c.read(authControllerProvider.notifier).masuk('X999', 'rahasia', ingat: false),
      throwsA(isA<LoginGagal>()),
    );
    expect(c.read(authControllerProvider).status, AuthStatus.keluar);
  });

  test('masuk tanpa "Ingat perangkat": tidak ada yang disimpan', () async {
    final c = buat();
    await c.read(authControllerProvider.notifier).masuk('d0412', 'rahasia', ingat: false);
    final s = c.read(authControllerProvider);
    expect(s.status, AuthStatus.masuk);
    expect(s.dokter?.nama, 'dr. Andreas Wijaya');
    expect(s.perluBuatPin, isFalse);
    expect(store.values, isEmpty);
  });

  test('ingat perangkat → buat PIN → buka lagi terkunci → PIN benar masuk', () async {
    biometrik.ada = true;
    final c = buat();
    final auth = c.read(authControllerProvider.notifier);
    await auth.masuk('D0412', 'rahasia', ingat: true);
    expect(c.read(authControllerProvider).perluBuatPin, isTrue);

    await auth.buatPin('123456');
    expect(c.read(authControllerProvider).punyaPin, isTrue);
    expect(c.read(authControllerProvider).biometrik, isTrue);
    expect(store.values.values, isNot(contains('123456')), reason: 'PIN disimpan sebagai hash');

    // Aplikasi dibuka ulang.
    final c2 = buat();
    final auth2 = c2.read(authControllerProvider.notifier);
    await auth2.muat();
    expect(c2.read(authControllerProvider).status, AuthStatus.terkunci);
    expect(c2.read(authControllerProvider).dokter?.kode, 'D0412');

    expect(await auth2.bukaDenganPin('000000'), isFalse);
    expect(c2.read(authControllerProvider).gagalPin, 1);
    expect(await auth2.bukaDenganPin('123456'), isTrue);
    expect(c2.read(authControllerProvider).status, AuthStatus.masuk);
  });

  test('biometrik berhasil membuka kunci', () async {
    biometrik.ada = true;
    final c = buat();
    final auth = c.read(authControllerProvider.notifier);
    await auth.masuk('D0412', 'x', ingat: true);
    await auth.buatPin('123456');
    await auth.kunci();
    expect(c.read(authControllerProvider).sesiTerkunci, isTrue);
    expect(c.read(authControllerProvider).status, AuthStatus.masuk, reason: 'navigasi tidak berubah');
    expect(await auth.bukaDenganBiometrik(), isTrue);
    expect(c.read(authControllerProvider).status, AuthStatus.masuk);
    expect(c.read(authControllerProvider).sesiTerkunci, isFalse);
  });

  test('5× PIN salah → keluar, sesi dihapus, ada pesan', () async {
    final c = buat();
    final auth = c.read(authControllerProvider.notifier);
    await auth.masuk('D0412', 'x', ingat: true);
    await auth.buatPin('123456');
    await auth.kunci();
    for (var i = 0; i < AuthController.maksPercobaanPin; i++) {
      await auth.bukaDenganPin('999999');
    }
    final s = c.read(authControllerProvider);
    expect(s.status, AuthStatus.keluar);
    expect(s.pesan, contains('Terlalu banyak'));
    expect(store.values, isEmpty);
  });

  test('"Nanti saja" saat buat PIN → perangkat tidak diingat', () async {
    final c = buat();
    final auth = c.read(authControllerProvider.notifier);
    await auth.masuk('D0412', 'x', ingat: true);
    await auth.lewatiPin();
    expect(c.read(authControllerProvider).status, AuthStatus.masuk);
    expect(c.read(authControllerProvider).perluBuatPin, isFalse);
    expect(store.values, isEmpty);
  });

  test('keluar menghapus semua data lokal', () async {
    final c = buat();
    final auth = c.read(authControllerProvider.notifier);
    await auth.masuk('D0412', 'x', ingat: true);
    await auth.buatPin('123456');
    await auth.keluar();
    expect(c.read(authControllerProvider).status, AuthStatus.keluar);
    expect(auth.token, isNull);
    expect(store.values, isEmpty);
  });

  test('kunci tanpa PIN → sesi berakhir dengan pesan', () async {
    final c = buat();
    final auth = c.read(authControllerProvider.notifier);
    await auth.masuk('D0412', 'x', ingat: false);
    await auth.kunci();
    expect(c.read(authControllerProvider).status, AuthStatus.keluar);
    expect(c.read(authControllerProvider).pesan, contains('tidak aktif'));
  });

  test('ubah PIN: batal tetap memakai PIN lama; biometrik dinyalakan setelah verifikasi', () async {
    biometrik.ada = true;
    final c = buat();
    final auth = c.read(authControllerProvider.notifier);
    await auth.masuk('D0412', 'x', ingat: true);
    await auth.buatPin('123456');
    await auth.aturBiometrik(false);
    expect(store.values['biometrik'], '0');

    auth.mulaiUbahPin();
    expect(c.read(authControllerProvider).perluBuatPin, isTrue);
    await auth.lewatiPin();
    expect(store.values['pin_hash'], isNotNull);
    expect(await auth.bukaDenganPin('123456'), isTrue);

    expect(await auth.aturBiometrik(true), isTrue);
    expect(store.values['biometrik'], '1');
    biometrik.hasil = false;
    await auth.aturBiometrik(false);
    expect(await auth.aturBiometrik(true), isFalse, reason: 'verifikasi gagal');
  });
}
