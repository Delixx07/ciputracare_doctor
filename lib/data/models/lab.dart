import 'package:freezed_annotation/freezed_annotation.dart';

part 'lab.freezed.dart';
part 'lab.g.dart';

/// Penanda hasil lab di luar rujukan. `null` = normal.
enum LabFlag { kritis, tinggi, rendah }

/// Semua data penunjang satu pasien: lab, radiologi, lainnya.
@freezed
abstract class LabPasien with _$LabPasien {
  const factory LabPasien({
    NilaiKritis? nilaiKritis,
    @Default(<OrderLab>[]) List<OrderLab> order,
    @Default(<HasilLab>[]) List<HasilLab> hasil,
    TrenLab? tren,
    @Default(<Penunjang>[]) List<Penunjang> radiologi,
    @Default(<Penunjang>[]) List<Penunjang> lainnya,
  }) = _LabPasien;

  factory LabPasien.fromJson(Map<String, dynamic> json) => _$LabPasienFromJson(json);
}

/// Nilai kritis + status konfirmasinya dari Medinfras (tidak dikonfirmasi lewat aplikasi).
@freezed
abstract class NilaiKritis with _$NilaiKritis {
  const factory NilaiKritis({
    required String item,
    required String nilai,
    required String dilaporkan,
    required String statusKonfirmasi,
  }) = _NilaiKritis;

  factory NilaiKritis.fromJson(Map<String, dynamic> json) => _$NilaiKritisFromJson(json);
}

/// Order lab dengan 4 tahap: dipesan, sampel, diproses, selesai.
@freezed
abstract class OrderLab with _$OrderLab {
  const OrderLab._();

  const factory OrderLab({
    required String noTrx,
    required String judul,
    @Default(false) bool cito,

    /// Tahap terakhir yang sudah dilalui, 1–4.
    required int tahap,

    /// Jam tiap tahap (4 elemen), `null` bila belum.
    required List<String?> waktu,
    required String status,

    /// Nama item di [LabPasien.hasil] yang termasuk order ini.
    @Default(<String>[]) List<String> item,
    String? pengirim,
    String? pemeriksa,
    String? sampel,
  }) = _OrderLab;

  factory OrderLab.fromJson(Map<String, dynamic> json) => _$OrderLabFromJson(json);

  static const jumlahTahap = 4;

  static const namaTahap = ['Dipesan', 'Sampel diambil', 'Diproses', 'Selesai'];

  bool get selesai => tahap >= jumlahTahap;
}

@freezed
abstract class HasilLab with _$HasilLab {
  const HasilLab._();

  const factory HasilLab({
    required String item,

    /// Nilai apa adanya dari sumber (desimal koma).
    required String nilai,
    required String satuan,
    required String rujukan,
    String? sebelumnya,
    LabFlag? flag,
  }) = _HasilLab;

  factory HasilLab.fromJson(Map<String, dynamic> json) => _$HasilLabFromJson(json);

  bool get diLuarRujukan => flag != null;
}

@freezed
abstract class TrenLab with _$TrenLab {
  const factory TrenLab({
    required String item,
    required String satuan,

    /// [bawah, atas].
    required List<num> rujukan,
    @Default(<TitikTren>[]) List<TitikTren> titik,
  }) = _TrenLab;

  factory TrenLab.fromJson(Map<String, dynamic> json) => _$TrenLabFromJson(json);
}

@freezed
abstract class TitikTren with _$TitikTren {
  const factory TitikTren({required String waktu, required num nilai, String? kunjungan}) = _TitikTren;

  factory TitikTren.fromJson(Map<String, dynamic> json) => _$TitikTrenFromJson(json);
}

/// Pemeriksaan radiologi / penunjang lain.
@freezed
abstract class Penunjang with _$Penunjang {
  const factory Penunjang({required String pemeriksaan, required String status, String? dipesan, String? hasil}) =
      _Penunjang;

  factory Penunjang.fromJson(Map<String, dynamic> json) => _$PenunjangFromJson(json);
}

enum StatusLabMasuk { kritis, kritisDikonfirmasi, abnormal, diproses, normal }

/// Satu hasil/order lab yang baru masuk untuk pasien dokter (tab Lab).
@freezed
abstract class LabMasuk with _$LabMasuk {
  const LabMasuk._();

  const factory LabMasuk({
    required String noReg,
    required String nama,
    required String bed,
    required String jam,

    /// Daftar pemeriksaan singkat, mis. "GDS, HbA1c, Na/K/Cl, +4".
    required String pemeriksaan,
    required String ringkasan,
    required StatusLabMasuk status,
  }) = _LabMasuk;

  factory LabMasuk.fromJson(Map<String, dynamic> json) => _$LabMasukFromJson(json);

  /// Ada nilai kritis (sudah/belum dikonfirmasi) atau di luar rujukan.
  bool get perluPerhatian => status != StatusLabMasuk.diproses && status != StatusLabMasuk.normal;
}
