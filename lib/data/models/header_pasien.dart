import 'package:freezed_annotation/freezed_annotation.dart';

part 'header_pasien.freezed.dart';
part 'header_pasien.g.dart';

/// Header registrasi pasien, dipakai di semua tab halaman pasien.
@freezed
abstract class HeaderPasien with _$HeaderPasien {
  const factory HeaderPasien({
    required String noReg,
    required String noRm,
    required String nama,
    required String umur,
    required String jk,
    required String bed,
    required String datang,
    required String penjamin,
    String? alergi,

    /// Label triage, mis. "Triage 3".
    required String triage,
    required int ews,
    required VitalTerakhir vital,
  }) = _HeaderPasien;

  factory HeaderPasien.fromJson(Map<String, dynamic> json) => _$HeaderPasienFromJson(json);
}

/// Vital terakhir. Di JSON, `jam` dan `abnormal` bercampur dengan nilai vital:
/// `{ "jam": "07:20", "GCS": "15", "TD": "156/86", ..., "abnormal": ["TD"] }`.
@freezed
abstract class VitalTerakhir with _$VitalTerakhir {
  const VitalTerakhir._();

  const factory VitalTerakhir({
    required String jam,

    /// Label → nilai, urutan sesuai sumber.
    required Map<String, String> nilai,
    @Default(<String>[]) List<String> abnormal,
  }) = _VitalTerakhir;

  factory VitalTerakhir.fromJson(Map<String, dynamic> json) {
    final nilai = <String, String>{};
    json.forEach((key, value) {
      if (key != 'jam' && key != 'abnormal') nilai[key] = value.toString();
    });
    return VitalTerakhir(
      jam: json['jam'] as String,
      nilai: nilai,
      abnormal: (json['abnormal'] as List<dynamic>? ?? const []).cast<String>(),
    );
  }

  bool isAbnormal(String label) => abnormal.contains(label);

  Map<String, dynamic> toJson() => {'jam': jam, ...nilai, 'abnormal': abnormal};
}
