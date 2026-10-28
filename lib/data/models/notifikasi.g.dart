// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifikasi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Notifikasi _$NotifikasiFromJson(Map<String, dynamic> json) => _Notifikasi(
  id: json['id'] as String,
  jenis: $enumDecode(_$NotifikasiJenisEnumMap, json['jenis']),
  judul: json['judul'] as String,
  isi: json['isi'] as String,
  jam: json['jam'] as String,
  belumDibaca: json['belumDibaca'] as bool? ?? false,
  tone: $enumDecodeNullable(_$NotifikasiToneEnumMap, json['tone']) ?? NotifikasiTone.neutral,
  noReg: json['noReg'] as String?,
  tab: json['tab'] as String?,
);

Map<String, dynamic> _$NotifikasiToJson(_Notifikasi instance) => <String, dynamic>{
  'id': instance.id,
  'jenis': _$NotifikasiJenisEnumMap[instance.jenis]!,
  'judul': instance.judul,
  'isi': instance.isi,
  'jam': instance.jam,
  'belumDibaca': instance.belumDibaca,
  'tone': _$NotifikasiToneEnumMap[instance.tone]!,
  'noReg': instance.noReg,
  'tab': instance.tab,
};

const _$NotifikasiJenisEnumMap = {NotifikasiJenis.lab: 'lab', NotifikasiJenis.igd: 'igd'};

const _$NotifikasiToneEnumMap = {
  NotifikasiTone.danger: 'danger',
  NotifikasiTone.warn: 'warn',
  NotifikasiTone.info: 'info',
  NotifikasiTone.neutral: 'neutral',
};
