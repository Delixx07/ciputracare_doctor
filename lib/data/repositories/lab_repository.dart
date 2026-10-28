import '../models/lab.dart';

/// Hasil lab & penunjang dari Medinfras. Hanya baca (GET).
/// Melempar `DataTidakDitemukan` bila [noReg] tidak dikenal.
abstract interface class LabRepository {
  /// Hasil lab terbaru untuk pasien IGD dokter, terbaru di atas.
  Future<List<LabMasuk>> getLabMasuk();

  Future<LabPasien> getLabPasien(String noReg);

  /// Tren satu parameter lintas kunjungan, `null` bila tidak ada data.
  Future<TrenLab?> getTren(String noReg, String item);
}
