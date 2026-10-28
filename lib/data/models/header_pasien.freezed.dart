// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'header_pasien.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HeaderPasien {

 String get noReg; String get noRm; String get nama; String get umur; String get jk; String get bed; String get datang; String get penjamin; String? get alergi;/// Label triage, mis. "Triage 3".
 String get triage; int get ews; VitalTerakhir get vital;
/// Create a copy of HeaderPasien
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaderPasienCopyWith<HeaderPasien> get copyWith => _$HeaderPasienCopyWithImpl<HeaderPasien>(this as HeaderPasien, _$identity);

  /// Serializes this HeaderPasien to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaderPasien&&(identical(other.noReg, noReg) || other.noReg == noReg)&&(identical(other.noRm, noRm) || other.noRm == noRm)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.umur, umur) || other.umur == umur)&&(identical(other.jk, jk) || other.jk == jk)&&(identical(other.bed, bed) || other.bed == bed)&&(identical(other.datang, datang) || other.datang == datang)&&(identical(other.penjamin, penjamin) || other.penjamin == penjamin)&&(identical(other.alergi, alergi) || other.alergi == alergi)&&(identical(other.triage, triage) || other.triage == triage)&&(identical(other.ews, ews) || other.ews == ews)&&(identical(other.vital, vital) || other.vital == vital));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noReg,noRm,nama,umur,jk,bed,datang,penjamin,alergi,triage,ews,vital);

@override
String toString() {
  return 'HeaderPasien(noReg: $noReg, noRm: $noRm, nama: $nama, umur: $umur, jk: $jk, bed: $bed, datang: $datang, penjamin: $penjamin, alergi: $alergi, triage: $triage, ews: $ews, vital: $vital)';
}


}

/// @nodoc
abstract mixin class $HeaderPasienCopyWith<$Res>  {
  factory $HeaderPasienCopyWith(HeaderPasien value, $Res Function(HeaderPasien) _then) = _$HeaderPasienCopyWithImpl;
@useResult
$Res call({
 String noReg, String noRm, String nama, String umur, String jk, String bed, String datang, String penjamin, String? alergi, String triage, int ews, VitalTerakhir vital
});


$VitalTerakhirCopyWith<$Res> get vital;

}
/// @nodoc
class _$HeaderPasienCopyWithImpl<$Res>
    implements $HeaderPasienCopyWith<$Res> {
  _$HeaderPasienCopyWithImpl(this._self, this._then);

  final HeaderPasien _self;
  final $Res Function(HeaderPasien) _then;

/// Create a copy of HeaderPasien
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? noReg = null,Object? noRm = null,Object? nama = null,Object? umur = null,Object? jk = null,Object? bed = null,Object? datang = null,Object? penjamin = null,Object? alergi = freezed,Object? triage = null,Object? ews = null,Object? vital = null,}) {
  return _then(_self.copyWith(
noReg: null == noReg ? _self.noReg : noReg // ignore: cast_nullable_to_non_nullable
as String,noRm: null == noRm ? _self.noRm : noRm // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,umur: null == umur ? _self.umur : umur // ignore: cast_nullable_to_non_nullable
as String,jk: null == jk ? _self.jk : jk // ignore: cast_nullable_to_non_nullable
as String,bed: null == bed ? _self.bed : bed // ignore: cast_nullable_to_non_nullable
as String,datang: null == datang ? _self.datang : datang // ignore: cast_nullable_to_non_nullable
as String,penjamin: null == penjamin ? _self.penjamin : penjamin // ignore: cast_nullable_to_non_nullable
as String,alergi: freezed == alergi ? _self.alergi : alergi // ignore: cast_nullable_to_non_nullable
as String?,triage: null == triage ? _self.triage : triage // ignore: cast_nullable_to_non_nullable
as String,ews: null == ews ? _self.ews : ews // ignore: cast_nullable_to_non_nullable
as int,vital: null == vital ? _self.vital : vital // ignore: cast_nullable_to_non_nullable
as VitalTerakhir,
  ));
}
/// Create a copy of HeaderPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VitalTerakhirCopyWith<$Res> get vital {
  
  return $VitalTerakhirCopyWith<$Res>(_self.vital, (value) {
    return _then(_self.copyWith(vital: value));
  });
}
}


/// Adds pattern-matching-related methods to [HeaderPasien].
extension HeaderPasienPatterns on HeaderPasien {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeaderPasien value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeaderPasien() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeaderPasien value)  $default,){
final _that = this;
switch (_that) {
case _HeaderPasien():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeaderPasien value)?  $default,){
final _that = this;
switch (_that) {
case _HeaderPasien() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String noReg,  String noRm,  String nama,  String umur,  String jk,  String bed,  String datang,  String penjamin,  String? alergi,  String triage,  int ews,  VitalTerakhir vital)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeaderPasien() when $default != null:
return $default(_that.noReg,_that.noRm,_that.nama,_that.umur,_that.jk,_that.bed,_that.datang,_that.penjamin,_that.alergi,_that.triage,_that.ews,_that.vital);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String noReg,  String noRm,  String nama,  String umur,  String jk,  String bed,  String datang,  String penjamin,  String? alergi,  String triage,  int ews,  VitalTerakhir vital)  $default,) {final _that = this;
switch (_that) {
case _HeaderPasien():
return $default(_that.noReg,_that.noRm,_that.nama,_that.umur,_that.jk,_that.bed,_that.datang,_that.penjamin,_that.alergi,_that.triage,_that.ews,_that.vital);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String noReg,  String noRm,  String nama,  String umur,  String jk,  String bed,  String datang,  String penjamin,  String? alergi,  String triage,  int ews,  VitalTerakhir vital)?  $default,) {final _that = this;
switch (_that) {
case _HeaderPasien() when $default != null:
return $default(_that.noReg,_that.noRm,_that.nama,_that.umur,_that.jk,_that.bed,_that.datang,_that.penjamin,_that.alergi,_that.triage,_that.ews,_that.vital);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeaderPasien implements HeaderPasien {
  const _HeaderPasien({required this.noReg, required this.noRm, required this.nama, required this.umur, required this.jk, required this.bed, required this.datang, required this.penjamin, this.alergi, required this.triage, required this.ews, required this.vital});
  factory _HeaderPasien.fromJson(Map<String, dynamic> json) => _$HeaderPasienFromJson(json);

@override final  String noReg;
@override final  String noRm;
@override final  String nama;
@override final  String umur;
@override final  String jk;
@override final  String bed;
@override final  String datang;
@override final  String penjamin;
@override final  String? alergi;
/// Label triage, mis. "Triage 3".
@override final  String triage;
@override final  int ews;
@override final  VitalTerakhir vital;

/// Create a copy of HeaderPasien
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeaderPasienCopyWith<_HeaderPasien> get copyWith => __$HeaderPasienCopyWithImpl<_HeaderPasien>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeaderPasienToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeaderPasien&&(identical(other.noReg, noReg) || other.noReg == noReg)&&(identical(other.noRm, noRm) || other.noRm == noRm)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.umur, umur) || other.umur == umur)&&(identical(other.jk, jk) || other.jk == jk)&&(identical(other.bed, bed) || other.bed == bed)&&(identical(other.datang, datang) || other.datang == datang)&&(identical(other.penjamin, penjamin) || other.penjamin == penjamin)&&(identical(other.alergi, alergi) || other.alergi == alergi)&&(identical(other.triage, triage) || other.triage == triage)&&(identical(other.ews, ews) || other.ews == ews)&&(identical(other.vital, vital) || other.vital == vital));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noReg,noRm,nama,umur,jk,bed,datang,penjamin,alergi,triage,ews,vital);

@override
String toString() {
  return 'HeaderPasien(noReg: $noReg, noRm: $noRm, nama: $nama, umur: $umur, jk: $jk, bed: $bed, datang: $datang, penjamin: $penjamin, alergi: $alergi, triage: $triage, ews: $ews, vital: $vital)';
}


}

/// @nodoc
abstract mixin class _$HeaderPasienCopyWith<$Res> implements $HeaderPasienCopyWith<$Res> {
  factory _$HeaderPasienCopyWith(_HeaderPasien value, $Res Function(_HeaderPasien) _then) = __$HeaderPasienCopyWithImpl;
@override @useResult
$Res call({
 String noReg, String noRm, String nama, String umur, String jk, String bed, String datang, String penjamin, String? alergi, String triage, int ews, VitalTerakhir vital
});


@override $VitalTerakhirCopyWith<$Res> get vital;

}
/// @nodoc
class __$HeaderPasienCopyWithImpl<$Res>
    implements _$HeaderPasienCopyWith<$Res> {
  __$HeaderPasienCopyWithImpl(this._self, this._then);

  final _HeaderPasien _self;
  final $Res Function(_HeaderPasien) _then;

/// Create a copy of HeaderPasien
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noReg = null,Object? noRm = null,Object? nama = null,Object? umur = null,Object? jk = null,Object? bed = null,Object? datang = null,Object? penjamin = null,Object? alergi = freezed,Object? triage = null,Object? ews = null,Object? vital = null,}) {
  return _then(_HeaderPasien(
noReg: null == noReg ? _self.noReg : noReg // ignore: cast_nullable_to_non_nullable
as String,noRm: null == noRm ? _self.noRm : noRm // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,umur: null == umur ? _self.umur : umur // ignore: cast_nullable_to_non_nullable
as String,jk: null == jk ? _self.jk : jk // ignore: cast_nullable_to_non_nullable
as String,bed: null == bed ? _self.bed : bed // ignore: cast_nullable_to_non_nullable
as String,datang: null == datang ? _self.datang : datang // ignore: cast_nullable_to_non_nullable
as String,penjamin: null == penjamin ? _self.penjamin : penjamin // ignore: cast_nullable_to_non_nullable
as String,alergi: freezed == alergi ? _self.alergi : alergi // ignore: cast_nullable_to_non_nullable
as String?,triage: null == triage ? _self.triage : triage // ignore: cast_nullable_to_non_nullable
as String,ews: null == ews ? _self.ews : ews // ignore: cast_nullable_to_non_nullable
as int,vital: null == vital ? _self.vital : vital // ignore: cast_nullable_to_non_nullable
as VitalTerakhir,
  ));
}

/// Create a copy of HeaderPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VitalTerakhirCopyWith<$Res> get vital {
  
  return $VitalTerakhirCopyWith<$Res>(_self.vital, (value) {
    return _then(_self.copyWith(vital: value));
  });
}
}

/// @nodoc
mixin _$VitalTerakhir {

 String get jam;/// Label → nilai, urutan sesuai sumber.
 Map<String, String> get nilai; List<String> get abnormal;
/// Create a copy of VitalTerakhir
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VitalTerakhirCopyWith<VitalTerakhir> get copyWith => _$VitalTerakhirCopyWithImpl<VitalTerakhir>(this as VitalTerakhir, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VitalTerakhir&&(identical(other.jam, jam) || other.jam == jam)&&const DeepCollectionEquality().equals(other.nilai, nilai)&&const DeepCollectionEquality().equals(other.abnormal, abnormal));
}


@override
int get hashCode => Object.hash(runtimeType,jam,const DeepCollectionEquality().hash(nilai),const DeepCollectionEquality().hash(abnormal));

@override
String toString() {
  return 'VitalTerakhir(jam: $jam, nilai: $nilai, abnormal: $abnormal)';
}


}

/// @nodoc
abstract mixin class $VitalTerakhirCopyWith<$Res>  {
  factory $VitalTerakhirCopyWith(VitalTerakhir value, $Res Function(VitalTerakhir) _then) = _$VitalTerakhirCopyWithImpl;
@useResult
$Res call({
 String jam, Map<String, String> nilai, List<String> abnormal
});




}
/// @nodoc
class _$VitalTerakhirCopyWithImpl<$Res>
    implements $VitalTerakhirCopyWith<$Res> {
  _$VitalTerakhirCopyWithImpl(this._self, this._then);

  final VitalTerakhir _self;
  final $Res Function(VitalTerakhir) _then;

/// Create a copy of VitalTerakhir
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jam = null,Object? nilai = null,Object? abnormal = null,}) {
  return _then(_self.copyWith(
jam: null == jam ? _self.jam : jam // ignore: cast_nullable_to_non_nullable
as String,nilai: null == nilai ? _self.nilai : nilai // ignore: cast_nullable_to_non_nullable
as Map<String, String>,abnormal: null == abnormal ? _self.abnormal : abnormal // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [VitalTerakhir].
extension VitalTerakhirPatterns on VitalTerakhir {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VitalTerakhir value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VitalTerakhir() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VitalTerakhir value)  $default,){
final _that = this;
switch (_that) {
case _VitalTerakhir():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VitalTerakhir value)?  $default,){
final _that = this;
switch (_that) {
case _VitalTerakhir() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String jam,  Map<String, String> nilai,  List<String> abnormal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VitalTerakhir() when $default != null:
return $default(_that.jam,_that.nilai,_that.abnormal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String jam,  Map<String, String> nilai,  List<String> abnormal)  $default,) {final _that = this;
switch (_that) {
case _VitalTerakhir():
return $default(_that.jam,_that.nilai,_that.abnormal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String jam,  Map<String, String> nilai,  List<String> abnormal)?  $default,) {final _that = this;
switch (_that) {
case _VitalTerakhir() when $default != null:
return $default(_that.jam,_that.nilai,_that.abnormal);case _:
  return null;

}
}

}

/// @nodoc


class _VitalTerakhir extends VitalTerakhir {
  const _VitalTerakhir({required this.jam, required final  Map<String, String> nilai, final  List<String> abnormal = const <String>[]}): _nilai = nilai,_abnormal = abnormal,super._();
  

@override final  String jam;
/// Label → nilai, urutan sesuai sumber.
 final  Map<String, String> _nilai;
/// Label → nilai, urutan sesuai sumber.
@override Map<String, String> get nilai {
  if (_nilai is EqualUnmodifiableMapView) return _nilai;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_nilai);
}

 final  List<String> _abnormal;
@override@JsonKey() List<String> get abnormal {
  if (_abnormal is EqualUnmodifiableListView) return _abnormal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abnormal);
}


/// Create a copy of VitalTerakhir
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VitalTerakhirCopyWith<_VitalTerakhir> get copyWith => __$VitalTerakhirCopyWithImpl<_VitalTerakhir>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VitalTerakhir&&(identical(other.jam, jam) || other.jam == jam)&&const DeepCollectionEquality().equals(other._nilai, _nilai)&&const DeepCollectionEquality().equals(other._abnormal, _abnormal));
}


@override
int get hashCode => Object.hash(runtimeType,jam,const DeepCollectionEquality().hash(_nilai),const DeepCollectionEquality().hash(_abnormal));

@override
String toString() {
  return 'VitalTerakhir(jam: $jam, nilai: $nilai, abnormal: $abnormal)';
}


}

/// @nodoc
abstract mixin class _$VitalTerakhirCopyWith<$Res> implements $VitalTerakhirCopyWith<$Res> {
  factory _$VitalTerakhirCopyWith(_VitalTerakhir value, $Res Function(_VitalTerakhir) _then) = __$VitalTerakhirCopyWithImpl;
@override @useResult
$Res call({
 String jam, Map<String, String> nilai, List<String> abnormal
});




}
/// @nodoc
class __$VitalTerakhirCopyWithImpl<$Res>
    implements _$VitalTerakhirCopyWith<$Res> {
  __$VitalTerakhirCopyWithImpl(this._self, this._then);

  final _VitalTerakhir _self;
  final $Res Function(_VitalTerakhir) _then;

/// Create a copy of VitalTerakhir
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jam = null,Object? nilai = null,Object? abnormal = null,}) {
  return _then(_VitalTerakhir(
jam: null == jam ? _self.jam : jam // ignore: cast_nullable_to_non_nullable
as String,nilai: null == nilai ? _self._nilai : nilai // ignore: cast_nullable_to_non_nullable
as Map<String, String>,abnormal: null == abnormal ? _self._abnormal : abnormal // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
