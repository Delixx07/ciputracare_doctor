import 'package:freezed_annotation/freezed_annotation.dart';

part 'dokter.freezed.dart';
part 'dokter.g.dart';

@freezed
abstract class Dokter with _$Dokter {
  const factory Dokter({required String nama, required String kode, required String unit, String? shift}) = _Dokter;

  factory Dokter.fromJson(Map<String, dynamic> json) => _$DokterFromJson(json);
}
