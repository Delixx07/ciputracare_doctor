// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disposisi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Disposisi _$DisposisiFromJson(Map<String, dynamic> json) => _Disposisi(
  status: json['status'] as String,
  rencana: json['rencana'] as String,
  ruang: json['ruang'] as String?,
  dpjp: json['dpjp'] as String?,
  penjamin: json['penjamin'] as String?,
  indikasi: json['indikasi'] as String?,
  catatan: json['catatan'] as String?,
);

Map<String, dynamic> _$DisposisiToJson(_Disposisi instance) => <String, dynamic>{
  'status': instance.status,
  'rencana': instance.rencana,
  'ruang': instance.ruang,
  'dpjp': instance.dpjp,
  'penjamin': instance.penjamin,
  'indikasi': instance.indikasi,
  'catatan': instance.catatan,
};
