// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LabPasien _$LabPasienFromJson(Map<String, dynamic> json) => _LabPasien(
  nilaiKritis: json['nilaiKritis'] == null ? null : NilaiKritis.fromJson(json['nilaiKritis'] as Map<String, dynamic>),
  order:
      (json['order'] as List<dynamic>?)?.map((e) => OrderLab.fromJson(e as Map<String, dynamic>)).toList() ??
      const <OrderLab>[],
  hasil:
      (json['hasil'] as List<dynamic>?)?.map((e) => HasilLab.fromJson(e as Map<String, dynamic>)).toList() ??
      const <HasilLab>[],
  tren: json['tren'] == null ? null : TrenLab.fromJson(json['tren'] as Map<String, dynamic>),
  radiologi:
      (json['radiologi'] as List<dynamic>?)?.map((e) => Penunjang.fromJson(e as Map<String, dynamic>)).toList() ??
      const <Penunjang>[],
  lainnya:
      (json['lainnya'] as List<dynamic>?)?.map((e) => Penunjang.fromJson(e as Map<String, dynamic>)).toList() ??
      const <Penunjang>[],
);

Map<String, dynamic> _$LabPasienToJson(_LabPasien instance) => <String, dynamic>{
  'nilaiKritis': instance.nilaiKritis?.toJson(),
  'order': instance.order.map((e) => e.toJson()).toList(),
  'hasil': instance.hasil.map((e) => e.toJson()).toList(),
  'tren': instance.tren?.toJson(),
  'radiologi': instance.radiologi.map((e) => e.toJson()).toList(),
  'lainnya': instance.lainnya.map((e) => e.toJson()).toList(),
};

_NilaiKritis _$NilaiKritisFromJson(Map<String, dynamic> json) => _NilaiKritis(
  item: json['item'] as String,
  nilai: json['nilai'] as String,
  dilaporkan: json['dilaporkan'] as String,
  statusKonfirmasi: json['statusKonfirmasi'] as String,
);

Map<String, dynamic> _$NilaiKritisToJson(_NilaiKritis instance) => <String, dynamic>{
  'item': instance.item,
  'nilai': instance.nilai,
  'dilaporkan': instance.dilaporkan,
  'statusKonfirmasi': instance.statusKonfirmasi,
};

_OrderLab _$OrderLabFromJson(Map<String, dynamic> json) => _OrderLab(
  noTrx: json['noTrx'] as String,
  judul: json['judul'] as String,
  cito: json['cito'] as bool? ?? false,
  tahap: (json['tahap'] as num).toInt(),
  waktu: (json['waktu'] as List<dynamic>).map((e) => e as String?).toList(),
  status: json['status'] as String,
  item: (json['item'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
  pengirim: json['pengirim'] as String?,
  pemeriksa: json['pemeriksa'] as String?,
  sampel: json['sampel'] as String?,
);

Map<String, dynamic> _$OrderLabToJson(_OrderLab instance) => <String, dynamic>{
  'noTrx': instance.noTrx,
  'judul': instance.judul,
  'cito': instance.cito,
  'tahap': instance.tahap,
  'waktu': instance.waktu,
  'status': instance.status,
  'item': instance.item,
  'pengirim': instance.pengirim,
  'pemeriksa': instance.pemeriksa,
  'sampel': instance.sampel,
};

_HasilLab _$HasilLabFromJson(Map<String, dynamic> json) => _HasilLab(
  item: json['item'] as String,
  nilai: json['nilai'] as String,
  satuan: json['satuan'] as String,
  rujukan: json['rujukan'] as String,
  sebelumnya: json['sebelumnya'] as String?,
  flag: $enumDecodeNullable(_$LabFlagEnumMap, json['flag']),
);

Map<String, dynamic> _$HasilLabToJson(_HasilLab instance) => <String, dynamic>{
  'item': instance.item,
  'nilai': instance.nilai,
  'satuan': instance.satuan,
  'rujukan': instance.rujukan,
  'sebelumnya': instance.sebelumnya,
  'flag': _$LabFlagEnumMap[instance.flag],
};

const _$LabFlagEnumMap = {LabFlag.kritis: 'kritis', LabFlag.tinggi: 'tinggi', LabFlag.rendah: 'rendah'};

_TrenLab _$TrenLabFromJson(Map<String, dynamic> json) => _TrenLab(
  item: json['item'] as String,
  satuan: json['satuan'] as String,
  rujukan: (json['rujukan'] as List<dynamic>).map((e) => e as num).toList(),
  titik:
      (json['titik'] as List<dynamic>?)?.map((e) => TitikTren.fromJson(e as Map<String, dynamic>)).toList() ??
      const <TitikTren>[],
);

Map<String, dynamic> _$TrenLabToJson(_TrenLab instance) => <String, dynamic>{
  'item': instance.item,
  'satuan': instance.satuan,
  'rujukan': instance.rujukan,
  'titik': instance.titik.map((e) => e.toJson()).toList(),
};

_TitikTren _$TitikTrenFromJson(Map<String, dynamic> json) =>
    _TitikTren(waktu: json['waktu'] as String, nilai: json['nilai'] as num, kunjungan: json['kunjungan'] as String?);

Map<String, dynamic> _$TitikTrenToJson(_TitikTren instance) => <String, dynamic>{
  'waktu': instance.waktu,
  'nilai': instance.nilai,
  'kunjungan': instance.kunjungan,
};

_Penunjang _$PenunjangFromJson(Map<String, dynamic> json) => _Penunjang(
  pemeriksaan: json['pemeriksaan'] as String,
  status: json['status'] as String,
  dipesan: json['dipesan'] as String?,
  hasil: json['hasil'] as String?,
);

Map<String, dynamic> _$PenunjangToJson(_Penunjang instance) => <String, dynamic>{
  'pemeriksaan': instance.pemeriksaan,
  'status': instance.status,
  'dipesan': instance.dipesan,
  'hasil': instance.hasil,
};

_LabMasuk _$LabMasukFromJson(Map<String, dynamic> json) => _LabMasuk(
  noReg: json['noReg'] as String,
  nama: json['nama'] as String,
  bed: json['bed'] as String,
  jam: json['jam'] as String,
  pemeriksaan: json['pemeriksaan'] as String,
  ringkasan: json['ringkasan'] as String,
  status: $enumDecode(_$StatusLabMasukEnumMap, json['status']),
);

Map<String, dynamic> _$LabMasukToJson(_LabMasuk instance) => <String, dynamic>{
  'noReg': instance.noReg,
  'nama': instance.nama,
  'bed': instance.bed,
  'jam': instance.jam,
  'pemeriksaan': instance.pemeriksaan,
  'ringkasan': instance.ringkasan,
  'status': _$StatusLabMasukEnumMap[instance.status]!,
};

const _$StatusLabMasukEnumMap = {
  StatusLabMasuk.kritis: 'kritis',
  StatusLabMasuk.kritisDikonfirmasi: 'kritisDikonfirmasi',
  StatusLabMasuk.abnormal: 'abnormal',
  StatusLabMasuk.diproses: 'diproses',
  StatusLabMasuk.normal: 'normal',
};
