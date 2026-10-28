// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beranda.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RingkasanBeranda {

 int get pasienSaya; int get pasienIgd;/// Order lab pasien saya yang sudah selesai hari ini.
 int get labSelesai;/// Order lab pasien saya yang belum selesai.
 int get labDiproses; List<ItemPerhatian> get perhatian; SerahTerima? get serahTerima;
/// Create a copy of RingkasanBeranda
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RingkasanBerandaCopyWith<RingkasanBeranda> get copyWith => _$RingkasanBerandaCopyWithImpl<RingkasanBeranda>(this as RingkasanBeranda, _$identity);

  /// Serializes this RingkasanBeranda to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RingkasanBeranda&&(identical(other.pasienSaya, pasienSaya) || other.pasienSaya == pasienSaya)&&(identical(other.pasienIgd, pasienIgd) || other.pasienIgd == pasienIgd)&&(identical(other.labSelesai, labSelesai) || other.labSelesai == labSelesai)&&(identical(other.labDiproses, labDiproses) || other.labDiproses == labDiproses)&&const DeepCollectionEquality().equals(other.perhatian, perhatian)&&(identical(other.serahTerima, serahTerima) || other.serahTerima == serahTerima));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pasienSaya,pasienIgd,labSelesai,labDiproses,const DeepCollectionEquality().hash(perhatian),serahTerima);

@override
String toString() {
  return 'RingkasanBeranda(pasienSaya: $pasienSaya, pasienIgd: $pasienIgd, labSelesai: $labSelesai, labDiproses: $labDiproses, perhatian: $perhatian, serahTerima: $serahTerima)';
}


}

/// @nodoc
abstract mixin class $RingkasanBerandaCopyWith<$Res>  {
  factory $RingkasanBerandaCopyWith(RingkasanBeranda value, $Res Function(RingkasanBeranda) _then) = _$RingkasanBerandaCopyWithImpl;
@useResult
$Res call({
 int pasienSaya, int pasienIgd, int labSelesai, int labDiproses, List<ItemPerhatian> perhatian, SerahTerima? serahTerima
});


$SerahTerimaCopyWith<$Res>? get serahTerima;

}
/// @nodoc
class _$RingkasanBerandaCopyWithImpl<$Res>
    implements $RingkasanBerandaCopyWith<$Res> {
  _$RingkasanBerandaCopyWithImpl(this._self, this._then);

  final RingkasanBeranda _self;
  final $Res Function(RingkasanBeranda) _then;

/// Create a copy of RingkasanBeranda
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pasienSaya = null,Object? pasienIgd = null,Object? labSelesai = null,Object? labDiproses = null,Object? perhatian = null,Object? serahTerima = freezed,}) {
  return _then(_self.copyWith(
pasienSaya: null == pasienSaya ? _self.pasienSaya : pasienSaya // ignore: cast_nullable_to_non_nullable
as int,pasienIgd: null == pasienIgd ? _self.pasienIgd : pasienIgd // ignore: cast_nullable_to_non_nullable
as int,labSelesai: null == labSelesai ? _self.labSelesai : labSelesai // ignore: cast_nullable_to_non_nullable
as int,labDiproses: null == labDiproses ? _self.labDiproses : labDiproses // ignore: cast_nullable_to_non_nullable
as int,perhatian: null == perhatian ? _self.perhatian : perhatian // ignore: cast_nullable_to_non_nullable
as List<ItemPerhatian>,serahTerima: freezed == serahTerima ? _self.serahTerima : serahTerima // ignore: cast_nullable_to_non_nullable
as SerahTerima?,
  ));
}
/// Create a copy of RingkasanBeranda
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerahTerimaCopyWith<$Res>? get serahTerima {
    if (_self.serahTerima == null) {
    return null;
  }

  return $SerahTerimaCopyWith<$Res>(_self.serahTerima!, (value) {
    return _then(_self.copyWith(serahTerima: value));
  });
}
}


/// Adds pattern-matching-related methods to [RingkasanBeranda].
extension RingkasanBerandaPatterns on RingkasanBeranda {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RingkasanBeranda value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RingkasanBeranda() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RingkasanBeranda value)  $default,){
final _that = this;
switch (_that) {
case _RingkasanBeranda():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RingkasanBeranda value)?  $default,){
final _that = this;
switch (_that) {
case _RingkasanBeranda() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int pasienSaya,  int pasienIgd,  int labSelesai,  int labDiproses,  List<ItemPerhatian> perhatian,  SerahTerima? serahTerima)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RingkasanBeranda() when $default != null:
return $default(_that.pasienSaya,_that.pasienIgd,_that.labSelesai,_that.labDiproses,_that.perhatian,_that.serahTerima);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int pasienSaya,  int pasienIgd,  int labSelesai,  int labDiproses,  List<ItemPerhatian> perhatian,  SerahTerima? serahTerima)  $default,) {final _that = this;
switch (_that) {
case _RingkasanBeranda():
return $default(_that.pasienSaya,_that.pasienIgd,_that.labSelesai,_that.labDiproses,_that.perhatian,_that.serahTerima);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int pasienSaya,  int pasienIgd,  int labSelesai,  int labDiproses,  List<ItemPerhatian> perhatian,  SerahTerima? serahTerima)?  $default,) {final _that = this;
switch (_that) {
case _RingkasanBeranda() when $default != null:
return $default(_that.pasienSaya,_that.pasienIgd,_that.labSelesai,_that.labDiproses,_that.perhatian,_that.serahTerima);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RingkasanBeranda implements RingkasanBeranda {
  const _RingkasanBeranda({required this.pasienSaya, required this.pasienIgd, required this.labSelesai, required this.labDiproses, final  List<ItemPerhatian> perhatian = const <ItemPerhatian>[], this.serahTerima}): _perhatian = perhatian;
  factory _RingkasanBeranda.fromJson(Map<String, dynamic> json) => _$RingkasanBerandaFromJson(json);

@override final  int pasienSaya;
@override final  int pasienIgd;
/// Order lab pasien saya yang sudah selesai hari ini.
@override final  int labSelesai;
/// Order lab pasien saya yang belum selesai.
@override final  int labDiproses;
 final  List<ItemPerhatian> _perhatian;
@override@JsonKey() List<ItemPerhatian> get perhatian {
  if (_perhatian is EqualUnmodifiableListView) return _perhatian;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_perhatian);
}

@override final  SerahTerima? serahTerima;

/// Create a copy of RingkasanBeranda
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RingkasanBerandaCopyWith<_RingkasanBeranda> get copyWith => __$RingkasanBerandaCopyWithImpl<_RingkasanBeranda>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RingkasanBerandaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RingkasanBeranda&&(identical(other.pasienSaya, pasienSaya) || other.pasienSaya == pasienSaya)&&(identical(other.pasienIgd, pasienIgd) || other.pasienIgd == pasienIgd)&&(identical(other.labSelesai, labSelesai) || other.labSelesai == labSelesai)&&(identical(other.labDiproses, labDiproses) || other.labDiproses == labDiproses)&&const DeepCollectionEquality().equals(other._perhatian, _perhatian)&&(identical(other.serahTerima, serahTerima) || other.serahTerima == serahTerima));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pasienSaya,pasienIgd,labSelesai,labDiproses,const DeepCollectionEquality().hash(_perhatian),serahTerima);

@override
String toString() {
  return 'RingkasanBeranda(pasienSaya: $pasienSaya, pasienIgd: $pasienIgd, labSelesai: $labSelesai, labDiproses: $labDiproses, perhatian: $perhatian, serahTerima: $serahTerima)';
}


}

/// @nodoc
abstract mixin class _$RingkasanBerandaCopyWith<$Res> implements $RingkasanBerandaCopyWith<$Res> {
  factory _$RingkasanBerandaCopyWith(_RingkasanBeranda value, $Res Function(_RingkasanBeranda) _then) = __$RingkasanBerandaCopyWithImpl;
@override @useResult
$Res call({
 int pasienSaya, int pasienIgd, int labSelesai, int labDiproses, List<ItemPerhatian> perhatian, SerahTerima? serahTerima
});


@override $SerahTerimaCopyWith<$Res>? get serahTerima;

}
/// @nodoc
class __$RingkasanBerandaCopyWithImpl<$Res>
    implements _$RingkasanBerandaCopyWith<$Res> {
  __$RingkasanBerandaCopyWithImpl(this._self, this._then);

  final _RingkasanBeranda _self;
  final $Res Function(_RingkasanBeranda) _then;

/// Create a copy of RingkasanBeranda
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pasienSaya = null,Object? pasienIgd = null,Object? labSelesai = null,Object? labDiproses = null,Object? perhatian = null,Object? serahTerima = freezed,}) {
  return _then(_RingkasanBeranda(
pasienSaya: null == pasienSaya ? _self.pasienSaya : pasienSaya // ignore: cast_nullable_to_non_nullable
as int,pasienIgd: null == pasienIgd ? _self.pasienIgd : pasienIgd // ignore: cast_nullable_to_non_nullable
as int,labSelesai: null == labSelesai ? _self.labSelesai : labSelesai // ignore: cast_nullable_to_non_nullable
as int,labDiproses: null == labDiproses ? _self.labDiproses : labDiproses // ignore: cast_nullable_to_non_nullable
as int,perhatian: null == perhatian ? _self._perhatian : perhatian // ignore: cast_nullable_to_non_nullable
as List<ItemPerhatian>,serahTerima: freezed == serahTerima ? _self.serahTerima : serahTerima // ignore: cast_nullable_to_non_nullable
as SerahTerima?,
  ));
}

/// Create a copy of RingkasanBeranda
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerahTerimaCopyWith<$Res>? get serahTerima {
    if (_self.serahTerima == null) {
    return null;
  }

  return $SerahTerimaCopyWith<$Res>(_self.serahTerima!, (value) {
    return _then(_self.copyWith(serahTerima: value));
  });
}
}


/// @nodoc
mixin _$ItemPerhatian {

 JenisPerhatian get jenis; String get noReg; String get judul; String get keterangan;
/// Create a copy of ItemPerhatian
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemPerhatianCopyWith<ItemPerhatian> get copyWith => _$ItemPerhatianCopyWithImpl<ItemPerhatian>(this as ItemPerhatian, _$identity);

  /// Serializes this ItemPerhatian to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemPerhatian&&(identical(other.jenis, jenis) || other.jenis == jenis)&&(identical(other.noReg, noReg) || other.noReg == noReg)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jenis,noReg,judul,keterangan);

@override
String toString() {
  return 'ItemPerhatian(jenis: $jenis, noReg: $noReg, judul: $judul, keterangan: $keterangan)';
}


}

/// @nodoc
abstract mixin class $ItemPerhatianCopyWith<$Res>  {
  factory $ItemPerhatianCopyWith(ItemPerhatian value, $Res Function(ItemPerhatian) _then) = _$ItemPerhatianCopyWithImpl;
@useResult
$Res call({
 JenisPerhatian jenis, String noReg, String judul, String keterangan
});




}
/// @nodoc
class _$ItemPerhatianCopyWithImpl<$Res>
    implements $ItemPerhatianCopyWith<$Res> {
  _$ItemPerhatianCopyWithImpl(this._self, this._then);

  final ItemPerhatian _self;
  final $Res Function(ItemPerhatian) _then;

/// Create a copy of ItemPerhatian
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jenis = null,Object? noReg = null,Object? judul = null,Object? keterangan = null,}) {
  return _then(_self.copyWith(
jenis: null == jenis ? _self.jenis : jenis // ignore: cast_nullable_to_non_nullable
as JenisPerhatian,noReg: null == noReg ? _self.noReg : noReg // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,keterangan: null == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemPerhatian].
extension ItemPerhatianPatterns on ItemPerhatian {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemPerhatian value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemPerhatian() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemPerhatian value)  $default,){
final _that = this;
switch (_that) {
case _ItemPerhatian():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemPerhatian value)?  $default,){
final _that = this;
switch (_that) {
case _ItemPerhatian() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( JenisPerhatian jenis,  String noReg,  String judul,  String keterangan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemPerhatian() when $default != null:
return $default(_that.jenis,_that.noReg,_that.judul,_that.keterangan);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( JenisPerhatian jenis,  String noReg,  String judul,  String keterangan)  $default,) {final _that = this;
switch (_that) {
case _ItemPerhatian():
return $default(_that.jenis,_that.noReg,_that.judul,_that.keterangan);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( JenisPerhatian jenis,  String noReg,  String judul,  String keterangan)?  $default,) {final _that = this;
switch (_that) {
case _ItemPerhatian() when $default != null:
return $default(_that.jenis,_that.noReg,_that.judul,_that.keterangan);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemPerhatian implements ItemPerhatian {
  const _ItemPerhatian({required this.jenis, required this.noReg, required this.judul, required this.keterangan});
  factory _ItemPerhatian.fromJson(Map<String, dynamic> json) => _$ItemPerhatianFromJson(json);

@override final  JenisPerhatian jenis;
@override final  String noReg;
@override final  String judul;
@override final  String keterangan;

/// Create a copy of ItemPerhatian
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemPerhatianCopyWith<_ItemPerhatian> get copyWith => __$ItemPerhatianCopyWithImpl<_ItemPerhatian>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemPerhatianToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemPerhatian&&(identical(other.jenis, jenis) || other.jenis == jenis)&&(identical(other.noReg, noReg) || other.noReg == noReg)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jenis,noReg,judul,keterangan);

@override
String toString() {
  return 'ItemPerhatian(jenis: $jenis, noReg: $noReg, judul: $judul, keterangan: $keterangan)';
}


}

/// @nodoc
abstract mixin class _$ItemPerhatianCopyWith<$Res> implements $ItemPerhatianCopyWith<$Res> {
  factory _$ItemPerhatianCopyWith(_ItemPerhatian value, $Res Function(_ItemPerhatian) _then) = __$ItemPerhatianCopyWithImpl;
@override @useResult
$Res call({
 JenisPerhatian jenis, String noReg, String judul, String keterangan
});




}
/// @nodoc
class __$ItemPerhatianCopyWithImpl<$Res>
    implements _$ItemPerhatianCopyWith<$Res> {
  __$ItemPerhatianCopyWithImpl(this._self, this._then);

  final _ItemPerhatian _self;
  final $Res Function(_ItemPerhatian) _then;

/// Create a copy of ItemPerhatian
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jenis = null,Object? noReg = null,Object? judul = null,Object? keterangan = null,}) {
  return _then(_ItemPerhatian(
jenis: null == jenis ? _self.jenis : jenis // ignore: cast_nullable_to_non_nullable
as JenisPerhatian,noReg: null == noReg ? _self.noReg : noReg // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,keterangan: null == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SerahTerima {

/// Mis. "dr. Yohanes (shift malam)".
 String get dari; String get isi;
/// Create a copy of SerahTerima
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SerahTerimaCopyWith<SerahTerima> get copyWith => _$SerahTerimaCopyWithImpl<SerahTerima>(this as SerahTerima, _$identity);

  /// Serializes this SerahTerima to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SerahTerima&&(identical(other.dari, dari) || other.dari == dari)&&(identical(other.isi, isi) || other.isi == isi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dari,isi);

@override
String toString() {
  return 'SerahTerima(dari: $dari, isi: $isi)';
}


}

/// @nodoc
abstract mixin class $SerahTerimaCopyWith<$Res>  {
  factory $SerahTerimaCopyWith(SerahTerima value, $Res Function(SerahTerima) _then) = _$SerahTerimaCopyWithImpl;
@useResult
$Res call({
 String dari, String isi
});




}
/// @nodoc
class _$SerahTerimaCopyWithImpl<$Res>
    implements $SerahTerimaCopyWith<$Res> {
  _$SerahTerimaCopyWithImpl(this._self, this._then);

  final SerahTerima _self;
  final $Res Function(SerahTerima) _then;

/// Create a copy of SerahTerima
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dari = null,Object? isi = null,}) {
  return _then(_self.copyWith(
dari: null == dari ? _self.dari : dari // ignore: cast_nullable_to_non_nullable
as String,isi: null == isi ? _self.isi : isi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SerahTerima].
extension SerahTerimaPatterns on SerahTerima {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SerahTerima value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SerahTerima() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SerahTerima value)  $default,){
final _that = this;
switch (_that) {
case _SerahTerima():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SerahTerima value)?  $default,){
final _that = this;
switch (_that) {
case _SerahTerima() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dari,  String isi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SerahTerima() when $default != null:
return $default(_that.dari,_that.isi);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dari,  String isi)  $default,) {final _that = this;
switch (_that) {
case _SerahTerima():
return $default(_that.dari,_that.isi);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dari,  String isi)?  $default,) {final _that = this;
switch (_that) {
case _SerahTerima() when $default != null:
return $default(_that.dari,_that.isi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SerahTerima implements SerahTerima {
  const _SerahTerima({required this.dari, required this.isi});
  factory _SerahTerima.fromJson(Map<String, dynamic> json) => _$SerahTerimaFromJson(json);

/// Mis. "dr. Yohanes (shift malam)".
@override final  String dari;
@override final  String isi;

/// Create a copy of SerahTerima
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SerahTerimaCopyWith<_SerahTerima> get copyWith => __$SerahTerimaCopyWithImpl<_SerahTerima>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SerahTerimaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SerahTerima&&(identical(other.dari, dari) || other.dari == dari)&&(identical(other.isi, isi) || other.isi == isi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dari,isi);

@override
String toString() {
  return 'SerahTerima(dari: $dari, isi: $isi)';
}


}

/// @nodoc
abstract mixin class _$SerahTerimaCopyWith<$Res> implements $SerahTerimaCopyWith<$Res> {
  factory _$SerahTerimaCopyWith(_SerahTerima value, $Res Function(_SerahTerima) _then) = __$SerahTerimaCopyWithImpl;
@override @useResult
$Res call({
 String dari, String isi
});




}
/// @nodoc
class __$SerahTerimaCopyWithImpl<$Res>
    implements _$SerahTerimaCopyWith<$Res> {
  __$SerahTerimaCopyWithImpl(this._self, this._then);

  final _SerahTerima _self;
  final $Res Function(_SerahTerima) _then;

/// Create a copy of SerahTerima
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dari = null,Object? isi = null,}) {
  return _then(_SerahTerima(
dari: null == dari ? _self.dari : dari // ignore: cast_nullable_to_non_nullable
as String,isi: null == isi ? _self.isi : isi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
