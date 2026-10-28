// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beranda.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RingkasanBeranda _$RingkasanBerandaFromJson(Map<String, dynamic> json) => _RingkasanBeranda(
  pasienSaya: (json['pasienSaya'] as num).toInt(),
  pasienIgd: (json['pasienIgd'] as num).toInt(),
  labSelesai: (json['labSelesai'] as num).toInt(),
  labDiproses: (json['labDiproses'] as num).toInt(),
  perhatian:
      (json['perhatian'] as List<dynamic>?)?.map((e) => ItemPerhatian.fromJson(e as Map<String, dynamic>)).toList() ??
      const <ItemPerhatian>[],
  serahTerima: json['serahTerima'] == null ? null : SerahTerima.fromJson(json['serahTerima'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RingkasanBerandaToJson(_RingkasanBeranda instance) => <String, dynamic>{
  'pasienSaya': instance.pasienSaya,
  'pasienIgd': instance.pasienIgd,
  'labSelesai': instance.labSelesai,
  'labDiproses': instance.labDiproses,
  'perhatian': instance.perhatian.map((e) => e.toJson()).toList(),
  'serahTerima': instance.serahTerima?.toJson(),
};

_ItemPerhatian _$ItemPerhatianFromJson(Map<String, dynamic> json) => _ItemPerhatian(
  jenis: $enumDecode(_$JenisPerhatianEnumMap, json['jenis']),
  noReg: json['noReg'] as String,
  judul: json['judul'] as String,
  keterangan: json['keterangan'] as String,
);

Map<String, dynamic> _$ItemPerhatianToJson(_ItemPerhatian instance) => <String, dynamic>{
  'jenis': _$JenisPerhatianEnumMap[instance.jenis]!,
  'noReg': instance.noReg,
  'judul': instance.judul,
  'keterangan': instance.keterangan,
};

const _$JenisPerhatianEnumMap = {
  JenisPerhatian.nilaiKritis: 'nilaiKritis',
  JenisPerhatian.kajianBelumDiisi: 'kajianBelumDiisi',
  JenisPerhatian.cpptBelumDiverifikasi: 'cpptBelumDiverifikasi',
};

_SerahTerima _$SerahTerimaFromJson(Map<String, dynamic> json) =>
    _SerahTerima(dari: json['dari'] as String, isi: json['isi'] as String);

Map<String, dynamic> _$SerahTerimaToJson(_SerahTerima instance) => <String, dynamic>{
  'dari': instance.dari,
  'isi': instance.isi,
};
