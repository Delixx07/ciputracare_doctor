// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dokter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Dokter _$DokterFromJson(Map<String, dynamic> json) => _Dokter(
  nama: json['nama'] as String,
  kode: json['kode'] as String,
  unit: json['unit'] as String,
  shift: json['shift'] as String?,
);

Map<String, dynamic> _$DokterToJson(_Dokter instance) => <String, dynamic>{
  'nama': instance.nama,
  'kode': instance.kode,
  'unit': instance.unit,
  'shift': instance.shift,
};
