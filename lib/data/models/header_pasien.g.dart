// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header_pasien.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HeaderPasien _$HeaderPasienFromJson(Map<String, dynamic> json) => _HeaderPasien(
  noReg: json['noReg'] as String,
  noRm: json['noRm'] as String,
  nama: json['nama'] as String,
  umur: json['umur'] as String,
  jk: json['jk'] as String,
  bed: json['bed'] as String,
  datang: json['datang'] as String,
  penjamin: json['penjamin'] as String,
  alergi: json['alergi'] as String?,
  triage: json['triage'] as String,
  ews: (json['ews'] as num).toInt(),
  vital: VitalTerakhir.fromJson(json['vital'] as Map<String, dynamic>),
);

Map<String, dynamic> _$HeaderPasienToJson(_HeaderPasien instance) => <String, dynamic>{
  'noReg': instance.noReg,
  'noRm': instance.noRm,
  'nama': instance.nama,
  'umur': instance.umur,
  'jk': instance.jk,
  'bed': instance.bed,
  'datang': instance.datang,
  'penjamin': instance.penjamin,
  'alergi': instance.alergi,
  'triage': instance.triage,
  'ews': instance.ews,
  'vital': instance.vital.toJson(),
};
