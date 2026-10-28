import 'package:flutter/services.dart';

/// Blokir screenshot / rekam layar saat data pasien tampil (Android `FLAG_SECURE`).
/// iOS tidak punya padanan; panggilan diabaikan.
abstract interface class LayarAman {
  Future<void> atur({required bool aman});
}

class LayarAmanAndroid implements LayarAman {
  static const _channel = MethodChannel('ciputracare/layar_aman');

  @override
  Future<void> atur({required bool aman}) async {
    try {
      await _channel.invokeMethod<void>(aman ? 'aktifkan' : 'matikan');
    } on MissingPluginException {
      // iOS / test: tidak ada implementasi native.
    } on PlatformException {
      // Gagal mengatur flag bukan alasan untuk menutup aplikasi.
    }
  }
}
