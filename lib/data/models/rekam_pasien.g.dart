// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rekam_pasien.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RekamPasien _$RekamPasienFromJson(Map<String, dynamic> json) => _RekamPasien(
  header: HeaderPasien.fromJson(json['header'] as Map<String, dynamic>),
  kajianAwal: KajianAwal.fromJson(json['kajianAwal'] as Map<String, dynamic>),
  cppt:
      (json['cppt'] as List<dynamic>?)?.map((e) => Cppt.fromJson(e as Map<String, dynamic>)).toList() ?? const <Cppt>[],
  disposisi: Disposisi.fromJson(json['disposisi'] as Map<String, dynamic>),
  lab: LabPasien.fromJson(json['lab'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RekamPasienToJson(_RekamPasien instance) => <String, dynamic>{
  'header': instance.header.toJson(),
  'kajianAwal': instance.kajianAwal.toJson(),
  'cppt': instance.cppt.map((e) => e.toJson()).toList(),
  'disposisi': instance.disposisi.toJson(),
  'lab': instance.lab.toJson(),
};
