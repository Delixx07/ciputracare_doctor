import '../models/dokter.dart';

/// Hasil masuk: token untuk panggilan API + profil dokter.
class Sesi {
  const Sesi({required this.token, required this.dokter});

  final String token;
  final Dokter dokter;
}

/// Kode dokter / kata sandi salah, atau akun tidak boleh masuk.
class LoginGagal implements Exception {
  const LoginGagal(this.pesan);

  final String pesan;

  @override
  String toString() => 'LoginGagal: $pesan';
}

/// Masuk dengan akun Medinfras. Tidak mengubah data apa pun di Medinfras.
abstract interface class AuthRepository {
  /// Melempar [LoginGagal] bila ditolak.
  Future<Sesi> masuk(String kodeAtauEmail, String sandi);
}
