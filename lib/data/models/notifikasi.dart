import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifikasi.freezed.dart';
part 'notifikasi.g.dart';

enum NotifikasiJenis { lab, igd }

enum NotifikasiTone { danger, warn, info, neutral }

@freezed
abstract class Notifikasi with _$Notifikasi {
  const factory Notifikasi({
    /// Kunci stabil untuk status "sudah dibaca" lokal.
    required String id,
    required NotifikasiJenis jenis,
    required String judul,
    required String isi,
    required String jam,

    /// Status baca dari server. Status baca lokal disimpan terpisah di perangkat.
    @Default(false) bool belumDibaca,
    @Default(NotifikasiTone.neutral) NotifikasiTone tone,

    /// Pasien terkait + tab tujuan (`kajian`, `catatan`, `lab`, `disposisi`).
    String? noReg,
    String? tab,
  }) = _Notifikasi;

  factory Notifikasi.fromJson(Map<String, dynamic> json) => _$NotifikasiFromJson(json);
}
