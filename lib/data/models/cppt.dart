import 'package:freezed_annotation/freezed_annotation.dart';

part 'cppt.freezed.dart';
part 'cppt.g.dart';

/// Satu catatan perkembangan (CPPT) dalam format SOAP.
/// Status verifikasi dikelola di Medinfras; aplikasi hanya menampilkan.
@freezed
abstract class Cppt with _$Cppt {
  const Cppt._();

  const factory Cppt({
    /// PPA penulis, mis. "dr. Andreas Wijaya · Dokter IGD".
    required String ppa,
    required String waktu,
    required String status,
    @JsonKey(name: 'S') required String s,
    @JsonKey(name: 'O') required String o,
    @JsonKey(name: 'A') required String a,
    @JsonKey(name: 'P') required String p,
  }) = _Cppt;

  factory Cppt.fromJson(Map<String, dynamic> json) => _$CpptFromJson(json);

  bool get terverifikasi => status == 'Terverifikasi';
}
