import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/providers.dart';

/// Preferensi notifikasi (lokal di perangkat).
typedef Preferensi = ({bool notifLab, bool notifPasienBaru});

final preferensiProvider = NotifierProvider<PreferensiController, Preferensi>(PreferensiController.new);

class PreferensiController extends Notifier<Preferensi> {
  static const _kLab = 'pref_notif_lab';
  static const _kPasienBaru = 'pref_notif_pasien_baru';

  @override
  Preferensi build() {
    _muat();
    return (notifLab: true, notifPasienBaru: true);
  }

  Future<void> _muat() async {
    final store = ref.read(keyValueStoreProvider);
    final lab = await store.read(_kLab);
    final baru = await store.read(_kPasienBaru);
    state = (notifLab: lab != '0', notifPasienBaru: baru != '0');
  }

  Future<void> aturNotifLab(bool aktif) async {
    state = (notifLab: aktif, notifPasienBaru: state.notifPasienBaru);
    await ref.read(keyValueStoreProvider).write(_kLab, aktif ? '1' : '0');
  }

  Future<void> aturNotifPasienBaru(bool aktif) async {
    state = (notifLab: state.notifLab, notifPasienBaru: aktif);
    await ref.read(keyValueStoreProvider).write(_kPasienBaru, aktif ? '1' : '0');
  }
}

/// Perangkat punya biometrik yang bisa dipakai.
final biometrikTersediaProvider = FutureProvider<bool>((ref) => ref.watch(biometrikServiceProvider).tersedia());

/// Tampilan: ikuti sistem / terang / gelap (lokal di perangkat).
final temaProvider = NotifierProvider<TemaController, ThemeMode>(TemaController.new);

class TemaController extends Notifier<ThemeMode> {
  static const _kunci = 'pref_tema';

  @override
  ThemeMode build() {
    _muat();
    return ThemeMode.system;
  }

  Future<void> _muat() async {
    final nilai = await ref.read(keyValueStoreProvider).read(_kunci);
    state = ThemeMode.values.firstWhere((m) => m.name == nilai, orElse: () => ThemeMode.system);
  }

  Future<void> atur(ThemeMode mode) async {
    state = mode;
    await ref.read(keyValueStoreProvider).write(_kunci, mode.name);
  }
}
