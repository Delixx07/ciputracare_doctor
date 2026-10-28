import 'package:local_auth/local_auth.dart';

/// Verifikasi biometrik perangkat (sidik jari / wajah). Hanya untuk membuka kunci lokal.
abstract interface class BiometrikService {
  /// Perangkat punya biometrik yang bisa dipakai.
  Future<bool> tersedia();

  /// `true` bila berhasil; `false` bila batal, gagal, atau tidak tersedia.
  Future<bool> verifikasi(String alasan);
}

class LocalAuthBiometrik implements BiometrikService {
  final _auth = LocalAuthentication();

  @override
  Future<bool> tersedia() async {
    try {
      return await _auth.canCheckBiometrics && await _auth.isDeviceSupported();
    } on LocalAuthException {
      return false;
    }
  }

  @override
  Future<bool> verifikasi(String alasan) async {
    try {
      return await _auth.authenticate(localizedReason: alasan, biometricOnly: true, persistAcrossBackgrounding: true);
    } on LocalAuthException {
      return false;
    }
  }
}
