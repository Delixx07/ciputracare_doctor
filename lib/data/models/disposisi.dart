import 'package:freezed_annotation/freezed_annotation.dart';

part 'disposisi.freezed.dart';
part 'disposisi.g.dart';

/// Status disposisi pasien IGD (hanya ditampilkan).
@freezed
abstract class Disposisi with _$Disposisi {
  const factory Disposisi({
    /// Mis. "Belum diproses".
    required String status,
    required String rencana,
    String? ruang,
    String? dpjp,
    String? penjamin,
    String? indikasi,
    String? catatan,
  }) = _Disposisi;

  factory Disposisi.fromJson(Map<String, dynamic> json) => _$DisposisiFromJson(json);
}
