// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pasien_igd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PasienIgd _$PasienIgdFromJson(Map<String, dynamic> json) => _PasienIgd(
  noReg: json['noReg'] as String,
  noRm: json['noRm'] as String,
  nama: json['nama'] as String,
  umur: json['umur'] as String,
  jk: json['jk'] as String,
  bed: json['bed'] as String,
  datang: json['datang'] as String,
  triage: (json['triage'] as num).toInt(),
  keluhan: json['keluhan'] as String,
  status: json['status'] as String,
  statusTone: $enumDecode(_$StatusToneEnumMap, json['statusTone']),
  milikSaya: json['milikSaya'] as bool? ?? false,
);

Map<String, dynamic> _$PasienIgdToJson(_PasienIgd instance) => <String, dynamic>{
  'noReg': instance.noReg,
  'noRm': instance.noRm,
  'nama': instance.nama,
  'umur': instance.umur,
  'jk': instance.jk,
  'bed': instance.bed,
  'datang': instance.datang,
  'triage': instance.triage,
  'keluhan': instance.keluhan,
  'status': instance.status,
  'statusTone': _$StatusToneEnumMap[instance.statusTone]!,
  'milikSaya': instance.milikSaya,
};

const _$StatusToneEnumMap = {
  StatusTone.warn: 'warn',
  StatusTone.lab: 'lab',
  StatusTone.todo: 'todo',
  StatusTone.done: 'done',
};
