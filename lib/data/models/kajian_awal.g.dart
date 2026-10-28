// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kajian_awal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KajianAwal _$KajianAwalFromJson(Map<String, dynamic> json) => _KajianAwal(
  triage: TriageKajian.fromJson(json['triage'] as Map<String, dynamic>),
  anamnesa: Anamnesa.fromJson(json['anamnesa'] as Map<String, dynamic>),
  pengkajianPerawat: PengkajianPerawat.fromJson(json['pengkajianPerawat'] as Map<String, dynamic>),
  riwayat: Riwayat.fromJson(json['riwayat'] as Map<String, dynamic>),
  pemeriksaan: Pemeriksaan.fromJson(json['pemeriksaan'] as Map<String, dynamic>),
  assessment: Assessment.fromJson(json['assessment'] as Map<String, dynamic>),
  planning: Planning.fromJson(json['planning'] as Map<String, dynamic>),
);

Map<String, dynamic> _$KajianAwalToJson(_KajianAwal instance) => <String, dynamic>{
  'triage': instance.triage.toJson(),
  'anamnesa': instance.anamnesa.toJson(),
  'pengkajianPerawat': instance.pengkajianPerawat.toJson(),
  'riwayat': instance.riwayat.toJson(),
  'pemeriksaan': instance.pemeriksaan.toJson(),
  'assessment': instance.assessment.toJson(),
  'planning': instance.planning.toJson(),
};

_TriageKajian _$TriageKajianFromJson(Map<String, dynamic> json) => _TriageKajian(
  skala: json['skala'] as String,
  level: (json['level'] as num).toInt(),
  olehPerawat: json['olehPerawat'] as String,
);

Map<String, dynamic> _$TriageKajianToJson(_TriageKajian instance) => <String, dynamic>{
  'skala': instance.skala,
  'level': instance.level,
  'olehPerawat': instance.olehPerawat,
};

_Anamnesa _$AnamnesaFromJson(Map<String, dynamic> json) => _Anamnesa(
  tanggalJam: json['tanggalJam'] as String,
  jenisKunjungan: json['jenisKunjungan'] as String,
  sumber: json['sumber'] as String,
  keluhanUtama: json['keluhanUtama'] as String,
  rps: json['rps'] as String,
  keadaanDatang: json['keadaanDatang'] as String,
  alasanKunjungan: json['alasanKunjungan'] as String,
  fastTrack: json['fastTrack'] as bool? ?? false,
);

Map<String, dynamic> _$AnamnesaToJson(_Anamnesa instance) => <String, dynamic>{
  'tanggalJam': instance.tanggalJam,
  'jenisKunjungan': instance.jenisKunjungan,
  'sumber': instance.sumber,
  'keluhanUtama': instance.keluhanUtama,
  'rps': instance.rps,
  'keadaanDatang': instance.keadaanDatang,
  'alasanKunjungan': instance.alasanKunjungan,
  'fastTrack': instance.fastTrack,
};

_PengkajianPerawat _$PengkajianPerawatFromJson(Map<String, dynamic> json) => _PengkajianPerawat(
  oleh: json['oleh'] as String,
  caraDatang: json['caraDatang'] as String,
  rujukan: json['rujukan'] as String,
  abcde: Map<String, String>.from(json['abcde'] as Map),
  abnormal: (json['abnormal'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
);

Map<String, dynamic> _$PengkajianPerawatToJson(_PengkajianPerawat instance) => <String, dynamic>{
  'oleh': instance.oleh,
  'caraDatang': instance.caraDatang,
  'rujukan': instance.rujukan,
  'abcde': instance.abcde,
  'abnormal': instance.abnormal,
};

_Riwayat _$RiwayatFromJson(Map<String, dynamic> json) => _Riwayat(
  penyakitDahulu: (json['penyakitDahulu'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
  catatan: json['catatan'] as String?,
  obat:
      (json['obat'] as List<dynamic>?)?.map((e) => ObatRutin.fromJson(e as Map<String, dynamic>)).toList() ??
      const <ObatRutin>[],
  alergi:
      (json['alergi'] as List<dynamic>?)?.map((e) => Alergi.fromJson(e as Map<String, dynamic>)).toList() ??
      const <Alergi>[],
);

Map<String, dynamic> _$RiwayatToJson(_Riwayat instance) => <String, dynamic>{
  'penyakitDahulu': instance.penyakitDahulu,
  'catatan': instance.catatan,
  'obat': instance.obat.map((e) => e.toJson()).toList(),
  'alergi': instance.alergi.map((e) => e.toJson()).toList(),
};

_ObatRutin _$ObatRutinFromJson(Map<String, dynamic> json) =>
    _ObatRutin(nama: json['nama'] as String, aturan: json['aturan'] as String, terakhir: json['terakhir'] as String?);

Map<String, dynamic> _$ObatRutinToJson(_ObatRutin instance) => <String, dynamic>{
  'nama': instance.nama,
  'aturan': instance.aturan,
  'terakhir': instance.terakhir,
};

_Alergi _$AlergiFromJson(Map<String, dynamic> json) => _Alergi(
  jenis: json['jenis'] as String,
  nama: json['nama'] as String,
  reaksi: json['reaksi'] as String?,
  keparahan: json['keparahan'] as String?,
  dicatat: json['dicatat'] as String?,
);

Map<String, dynamic> _$AlergiToJson(_Alergi instance) => <String, dynamic>{
  'jenis': instance.jenis,
  'nama': instance.nama,
  'reaksi': instance.reaksi,
  'keparahan': instance.keparahan,
  'dicatat': instance.dicatat,
};

_Pemeriksaan _$PemeriksaanFromJson(Map<String, dynamic> json) => _Pemeriksaan(
  vital: Map<String, String>.from(json['vital'] as Map),
  fisikAbnormal:
      (json['fisikAbnormal'] as List<dynamic>?)?.map((e) => TemuanFisik.fromJson(e as Map<String, dynamic>)).toList() ??
      const <TemuanFisik>[],
  mst: json['mst'] == null ? null : Mst.fromJson(json['mst'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PemeriksaanToJson(_Pemeriksaan instance) => <String, dynamic>{
  'vital': instance.vital,
  'fisikAbnormal': instance.fisikAbnormal.map((e) => e.toJson()).toList(),
  'mst': instance.mst?.toJson(),
};

_TemuanFisik _$TemuanFisikFromJson(Map<String, dynamic> json) =>
    _TemuanFisik(sistem: json['sistem'] as String, temuan: json['temuan'] as String);

Map<String, dynamic> _$TemuanFisikToJson(_TemuanFisik instance) => <String, dynamic>{
  'sistem': instance.sistem,
  'temuan': instance.temuan,
};

_Mst _$MstFromJson(Map<String, dynamic> json) =>
    _Mst(skor: (json['skor'] as num).toInt(), kesimpulan: json['kesimpulan'] as String);

Map<String, dynamic> _$MstToJson(_Mst instance) => <String, dynamic>{
  'skor': instance.skor,
  'kesimpulan': instance.kesimpulan,
};

_Assessment _$AssessmentFromJson(Map<String, dynamic> json) => _Assessment(
  diagnosa:
      (json['diagnosa'] as List<dynamic>?)?.map((e) => Diagnosa.fromJson(e as Map<String, dynamic>)).toList() ??
      const <Diagnosa>[],
  prosedur:
      (json['prosedur'] as List<dynamic>?)?.map((e) => Prosedur.fromJson(e as Map<String, dynamic>)).toList() ??
      const <Prosedur>[],
);

Map<String, dynamic> _$AssessmentToJson(_Assessment instance) => <String, dynamic>{
  'diagnosa': instance.diagnosa.map((e) => e.toJson()).toList(),
  'prosedur': instance.prosedur.map((e) => e.toJson()).toList(),
};

_Diagnosa _$DiagnosaFromJson(Map<String, dynamic> json) =>
    _Diagnosa(kode: json['kode'] as String, nama: json['nama'] as String, tipe: json['tipe'] as String);

Map<String, dynamic> _$DiagnosaToJson(_Diagnosa instance) => <String, dynamic>{
  'kode': instance.kode,
  'nama': instance.nama,
  'tipe': instance.tipe,
};

_Prosedur _$ProsedurFromJson(Map<String, dynamic> json) =>
    _Prosedur(kode: json['kode'] as String, nama: json['nama'] as String);

Map<String, dynamic> _$ProsedurToJson(_Prosedur instance) => <String, dynamic>{
  'kode': instance.kode,
  'nama': instance.nama,
};

_Planning _$PlanningFromJson(Map<String, dynamic> json) => _Planning(
  terapi: json['terapi'] as String,
  instruksi: (json['instruksi'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
  resepOrder: (json['resepOrder'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
);

Map<String, dynamic> _$PlanningToJson(_Planning instance) => <String, dynamic>{
  'terapi': instance.terapi,
  'instruksi': instance.instruksi,
  'resepOrder': instance.resepOrder,
};
