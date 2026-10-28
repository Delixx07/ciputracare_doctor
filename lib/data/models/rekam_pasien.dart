import 'package:freezed_annotation/freezed_annotation.dart';

import 'cppt.dart';
import 'disposisi.dart';
import 'header_pasien.dart';
import 'kajian_awal.dart';
import 'lab.dart';

part 'rekam_pasien.freezed.dart';
part 'rekam_pasien.g.dart';

/// Rekam IGD lengkap satu registrasi (bentuk `assets/mock/rekam_*.json`).
@freezed
abstract class RekamPasien with _$RekamPasien {
  const factory RekamPasien({
    required HeaderPasien header,
    required KajianAwal kajianAwal,
    @Default(<Cppt>[]) List<Cppt> cppt,
    required Disposisi disposisi,
    required LabPasien lab,
  }) = _RekamPasien;

  factory RekamPasien.fromJson(Map<String, dynamic> json) => _$RekamPasienFromJson(json);
}
