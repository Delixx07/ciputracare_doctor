import 'package:freezed_annotation/freezed_annotation.dart';

part 'pasien_igd.freezed.dart';
part 'pasien_igd.g.dart';

/// Nada status di daftar pasien IGD (menentukan warna chip).
enum StatusTone { warn, lab, todo, done }

/// Satu baris di daftar pasien IGD.
@freezed
abstract class PasienIgd with _$PasienIgd {
  const factory PasienIgd({
    required String noReg,
    required String noRm,
    required String nama,
    required String umur,
    required String jk,
    required String bed,

    /// Jam datang, "HH:mm".
    required String datang,

    /// Level triage (ATS 1–5).
    required int triage,
    required String keluhan,
    required String status,
    required StatusTone statusTone,
    @Default(false) bool milikSaya,
  }) = _PasienIgd;

  factory PasienIgd.fromJson(Map<String, dynamic> json) => _$PasienIgdFromJson(json);
}
