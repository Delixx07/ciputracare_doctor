import 'package:freezed_annotation/freezed_annotation.dart';

part 'kajian_awal.freezed.dart';
part 'kajian_awal.g.dart';

/// Kajian awal IGD: triage + 6 bagian.
@freezed
abstract class KajianAwal with _$KajianAwal {
  const factory KajianAwal({
    required TriageKajian triage,
    required Anamnesa anamnesa,
    required PengkajianPerawat pengkajianPerawat,
    required Riwayat riwayat,
    required Pemeriksaan pemeriksaan,
    required Assessment assessment,
    required Planning planning,
  }) = _KajianAwal;

  factory KajianAwal.fromJson(Map<String, dynamic> json) => _$KajianAwalFromJson(json);
}

@freezed
abstract class TriageKajian with _$TriageKajian {
  const factory TriageKajian({required String skala, required int level, required String olehPerawat}) = _TriageKajian;

  factory TriageKajian.fromJson(Map<String, dynamic> json) => _$TriageKajianFromJson(json);
}

// 1. Anamnesa

@freezed
abstract class Anamnesa with _$Anamnesa {
  const factory Anamnesa({
    required String tanggalJam,
    required String jenisKunjungan,
    required String sumber,
    required String keluhanUtama,
    required String rps,
    required String keadaanDatang,
    required String alasanKunjungan,
    @Default(false) bool fastTrack,
  }) = _Anamnesa;

  factory Anamnesa.fromJson(Map<String, dynamic> json) => _$AnamnesaFromJson(json);
}

// 2. Pengkajian perawat

@freezed
abstract class PengkajianPerawat with _$PengkajianPerawat {
  const PengkajianPerawat._();

  const factory PengkajianPerawat({
    required String oleh,
    required String caraDatang,
    required String rujukan,

    /// Airway, Breathing, Circulation, Disability, Exposure → hasil.
    required Map<String, String> abcde,
    @Default(<String>[]) List<String> abnormal,
  }) = _PengkajianPerawat;

  factory PengkajianPerawat.fromJson(Map<String, dynamic> json) => _$PengkajianPerawatFromJson(json);

  bool isAbnormal(String bagian) => abnormal.contains(bagian);
}

// 3. Riwayat & alergi

@freezed
abstract class Riwayat with _$Riwayat {
  const factory Riwayat({
    @Default(<String>[]) List<String> penyakitDahulu,
    String? catatan,
    @Default(<ObatRutin>[]) List<ObatRutin> obat,
    @Default(<Alergi>[]) List<Alergi> alergi,
  }) = _Riwayat;

  factory Riwayat.fromJson(Map<String, dynamic> json) => _$RiwayatFromJson(json);
}

@freezed
abstract class ObatRutin with _$ObatRutin {
  const factory ObatRutin({required String nama, required String aturan, String? terakhir}) = _ObatRutin;

  factory ObatRutin.fromJson(Map<String, dynamic> json) => _$ObatRutinFromJson(json);
}

@freezed
abstract class Alergi with _$Alergi {
  const factory Alergi({
    required String jenis,
    required String nama,
    String? reaksi,
    String? keparahan,
    String? dicatat,
  }) = _Alergi;

  factory Alergi.fromJson(Map<String, dynamic> json) => _$AlergiFromJson(json);
}

// 4. Pemeriksaan

@freezed
abstract class Pemeriksaan with _$Pemeriksaan {
  const factory Pemeriksaan({
    /// Label → nilai, urutan sesuai sumber.
    required Map<String, String> vital,

    /// Hanya sistem yang abnormal; sistem lain dianggap "Normal".
    @Default(<TemuanFisik>[]) List<TemuanFisik> fisikAbnormal,
    Mst? mst,
  }) = _Pemeriksaan;

  factory Pemeriksaan.fromJson(Map<String, dynamic> json) => _$PemeriksaanFromJson(json);
}

@freezed
abstract class TemuanFisik with _$TemuanFisik {
  const factory TemuanFisik({required String sistem, required String temuan}) = _TemuanFisik;

  factory TemuanFisik.fromJson(Map<String, dynamic> json) => _$TemuanFisikFromJson(json);
}

/// Malnutrition Screening Tool.
@freezed
abstract class Mst with _$Mst {
  const factory Mst({required int skor, required String kesimpulan}) = _Mst;

  factory Mst.fromJson(Map<String, dynamic> json) => _$MstFromJson(json);
}

// 5. Assessment

@freezed
abstract class Assessment with _$Assessment {
  const factory Assessment({
    /// ICD-10.
    @Default(<Diagnosa>[]) List<Diagnosa> diagnosa,

    /// ICD-9-CM.
    @Default(<Prosedur>[]) List<Prosedur> prosedur,
  }) = _Assessment;

  factory Assessment.fromJson(Map<String, dynamic> json) => _$AssessmentFromJson(json);
}

@freezed
abstract class Diagnosa with _$Diagnosa {
  const factory Diagnosa({
    required String kode,
    required String nama,

    /// Utama, Sekunder, Penyerta.
    required String tipe,
  }) = _Diagnosa;

  factory Diagnosa.fromJson(Map<String, dynamic> json) => _$DiagnosaFromJson(json);
}

@freezed
abstract class Prosedur with _$Prosedur {
  const factory Prosedur({required String kode, required String nama}) = _Prosedur;

  factory Prosedur.fromJson(Map<String, dynamic> json) => _$ProsedurFromJson(json);
}

// 6. Planning

@freezed
abstract class Planning with _$Planning {
  const factory Planning({
    required String terapi,
    @Default(<String>[]) List<String> instruksi,
    @Default(<String>[]) List<String> resepOrder,
  }) = _Planning;

  factory Planning.fromJson(Map<String, dynamic> json) => _$PlanningFromJson(json);
}
