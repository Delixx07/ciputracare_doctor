import '../models/dokter.dart';

/// Profil dokter yang sedang masuk. Hanya baca.
abstract interface class ProfilRepository {
  Future<Dokter> getDokter();
}
