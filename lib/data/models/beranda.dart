import 'package:freezed_annotation/freezed_annotation.dart';

part 'beranda.freezed.dart';
part 'beranda.g.dart';

/// Ringkasan untuk Beranda.
@freezed
abstract class RingkasanBeranda with _$RingkasanBeranda {
  const factory RingkasanBeranda({
    required int pasienSaya,
    required int pasienIgd,

    /// Order lab pasien saya yang sudah selesai hari ini.
    required int labSelesai,

    /// Order lab pasien saya yang belum selesai.
    required int labDiproses,
    @Default(<ItemPerhatian>[]) List<ItemPerhatian> perhatian,
    SerahTerima? serahTerima,
  }) = _RingkasanBeranda;

  factory RingkasanBeranda.fromJson(Map<String, dynamic> json) => _$RingkasanBerandaFromJson(json);
}

enum JenisPerhatian { nilaiKritis, kajianBelumDiisi, cpptBelumDiverifikasi }

/// Informasi yang perlu diperhatikan dokter (bukan tugas yang dikerjakan di aplikasi).
@freezed
abstract class ItemPerhatian with _$ItemPerhatian {
  const factory ItemPerhatian({
    required JenisPerhatian jenis,
    required String noReg,
    required String judul,
    required String keterangan,
  }) = _ItemPerhatian;

  factory ItemPerhatian.fromJson(Map<String, dynamic> json) => _$ItemPerhatianFromJson(json);
}

/// Catatan serah terima dari shift sebelumnya.
@freezed
abstract class SerahTerima with _$SerahTerima {
  const factory SerahTerima({
    /// Mis. "dr. Yohanes (shift malam)".
    required String dari,
    required String isi,
  }) = _SerahTerima;

  factory SerahTerima.fromJson(Map<String, dynamic> json) => _$SerahTerimaFromJson(json);
}
