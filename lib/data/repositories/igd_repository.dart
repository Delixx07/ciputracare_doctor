import '../models/cppt.dart';
import '../models/disposisi.dart';
import '../models/header_pasien.dart';
import '../models/kajian_awal.dart';
import '../models/pasien_igd.dart';

/// Data pasien IGD dari Medinfras. Hanya baca (GET).
/// Melempar `DataTidakDitemukan` bila [noReg] tidak dikenal.
abstract interface class IgdRepository {
  /// Semua pasien IGD aktif; filter "Pasien saya" memakai [PasienIgd.milikSaya].
  Future<List<PasienIgd>> getDaftarPasien();

  /// Catatan serah terima shift sebelumnya, `null` bila tidak ada.
  Future<String?> getSerahTerima();

  Future<HeaderPasien> getHeader(String noReg);

  Future<KajianAwal> getKajianAwal(String noReg);

  /// Urut terbaru di atas.
  Future<List<Cppt>> getCppt(String noReg);

  Future<Disposisi> getDisposisi(String noReg);
}
