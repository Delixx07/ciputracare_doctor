// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pasien_igd.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasienIgd {

 String get noReg; String get noRm; String get nama; String get umur; String get jk; String get bed;/// Jam datang, "HH:mm".
 String get datang;/// Level triage (ATS 1–5).
 int get triage; String get keluhan; String get status; StatusTone get statusTone; bool get milikSaya;
/// Create a copy of PasienIgd
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasienIgdCopyWith<PasienIgd> get copyWith => _$PasienIgdCopyWithImpl<PasienIgd>(this as PasienIgd, _$identity);

  /// Serializes this PasienIgd to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasienIgd&&(identical(other.noReg, noReg) || other.noReg == noReg)&&(identical(other.noRm, noRm) || other.noRm == noRm)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.umur, umur) || other.umur == umur)&&(identical(other.jk, jk) || other.jk == jk)&&(identical(other.bed, bed) || other.bed == bed)&&(identical(other.datang, datang) || other.datang == datang)&&(identical(other.triage, triage) || other.triage == triage)&&(identical(other.keluhan, keluhan) || other.keluhan == keluhan)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusTone, statusTone) || other.statusTone == statusTone)&&(identical(other.milikSaya, milikSaya) || other.milikSaya == milikSaya));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noReg,noRm,nama,umur,jk,bed,datang,triage,keluhan,status,statusTone,milikSaya);

@override
String toString() {
  return 'PasienIgd(noReg: $noReg, noRm: $noRm, nama: $nama, umur: $umur, jk: $jk, bed: $bed, datang: $datang, triage: $triage, keluhan: $keluhan, status: $status, statusTone: $statusTone, milikSaya: $milikSaya)';
}


}

/// @nodoc
abstract mixin class $PasienIgdCopyWith<$Res>  {
  factory $PasienIgdCopyWith(PasienIgd value, $Res Function(PasienIgd) _then) = _$PasienIgdCopyWithImpl;
@useResult
$Res call({
 String noReg, String noRm, String nama, String umur, String jk, String bed, String datang, int triage, String keluhan, String status, StatusTone statusTone, bool milikSaya
});




}
/// @nodoc
class _$PasienIgdCopyWithImpl<$Res>
    implements $PasienIgdCopyWith<$Res> {
  _$PasienIgdCopyWithImpl(this._self, this._then);

  final PasienIgd _self;
  final $Res Function(PasienIgd) _then;

/// Create a copy of PasienIgd
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? noReg = null,Object? noRm = null,Object? nama = null,Object? umur = null,Object? jk = null,Object? bed = null,Object? datang = null,Object? triage = null,Object? keluhan = null,Object? status = null,Object? statusTone = null,Object? milikSaya = null,}) {
  return _then(_self.copyWith(
noReg: null == noReg ? _self.noReg : noReg // ignore: cast_nullable_to_non_nullable
as String,noRm: null == noRm ? _self.noRm : noRm // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,umur: null == umur ? _self.umur : umur // ignore: cast_nullable_to_non_nullable
as String,jk: null == jk ? _self.jk : jk // ignore: cast_nullable_to_non_nullable
as String,bed: null == bed ? _self.bed : bed // ignore: cast_nullable_to_non_nullable
as String,datang: null == datang ? _self.datang : datang // ignore: cast_nullable_to_non_nullable
as String,triage: null == triage ? _self.triage : triage // ignore: cast_nullable_to_non_nullable
as int,keluhan: null == keluhan ? _self.keluhan : keluhan // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusTone: null == statusTone ? _self.statusTone : statusTone // ignore: cast_nullable_to_non_nullable
as StatusTone,milikSaya: null == milikSaya ? _self.milikSaya : milikSaya // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PasienIgd].
extension PasienIgdPatterns on PasienIgd {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PasienIgd value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PasienIgd() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PasienIgd value)  $default,){
final _that = this;
switch (_that) {
case _PasienIgd():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PasienIgd value)?  $default,){
final _that = this;
switch (_that) {
case _PasienIgd() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String noReg,  String noRm,  String nama,  String umur,  String jk,  String bed,  String datang,  int triage,  String keluhan,  String status,  StatusTone statusTone,  bool milikSaya)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PasienIgd() when $default != null:
return $default(_that.noReg,_that.noRm,_that.nama,_that.umur,_that.jk,_that.bed,_that.datang,_that.triage,_that.keluhan,_that.status,_that.statusTone,_that.milikSaya);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String noReg,  String noRm,  String nama,  String umur,  String jk,  String bed,  String datang,  int triage,  String keluhan,  String status,  StatusTone statusTone,  bool milikSaya)  $default,) {final _that = this;
switch (_that) {
case _PasienIgd():
return $default(_that.noReg,_that.noRm,_that.nama,_that.umur,_that.jk,_that.bed,_that.datang,_that.triage,_that.keluhan,_that.status,_that.statusTone,_that.milikSaya);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String noReg,  String noRm,  String nama,  String umur,  String jk,  String bed,  String datang,  int triage,  String keluhan,  String status,  StatusTone statusTone,  bool milikSaya)?  $default,) {final _that = this;
switch (_that) {
case _PasienIgd() when $default != null:
return $default(_that.noReg,_that.noRm,_that.nama,_that.umur,_that.jk,_that.bed,_that.datang,_that.triage,_that.keluhan,_that.status,_that.statusTone,_that.milikSaya);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PasienIgd implements PasienIgd {
  const _PasienIgd({required this.noReg, required this.noRm, required this.nama, required this.umur, required this.jk, required this.bed, required this.datang, required this.triage, required this.keluhan, required this.status, required this.statusTone, this.milikSaya = false});
  factory _PasienIgd.fromJson(Map<String, dynamic> json) => _$PasienIgdFromJson(json);

@override final  String noReg;
@override final  String noRm;
@override final  String nama;
@override final  String umur;
@override final  String jk;
@override final  String bed;
/// Jam datang, "HH:mm".
@override final  String datang;
/// Level triage (ATS 1–5).
@override final  int triage;
@override final  String keluhan;
@override final  String status;
@override final  StatusTone statusTone;
@override@JsonKey() final  bool milikSaya;

/// Create a copy of PasienIgd
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasienIgdCopyWith<_PasienIgd> get copyWith => __$PasienIgdCopyWithImpl<_PasienIgd>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasienIgdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasienIgd&&(identical(other.noReg, noReg) || other.noReg == noReg)&&(identical(other.noRm, noRm) || other.noRm == noRm)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.umur, umur) || other.umur == umur)&&(identical(other.jk, jk) || other.jk == jk)&&(identical(other.bed, bed) || other.bed == bed)&&(identical(other.datang, datang) || other.datang == datang)&&(identical(other.triage, triage) || other.triage == triage)&&(identical(other.keluhan, keluhan) || other.keluhan == keluhan)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusTone, statusTone) || other.statusTone == statusTone)&&(identical(other.milikSaya, milikSaya) || other.milikSaya == milikSaya));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noReg,noRm,nama,umur,jk,bed,datang,triage,keluhan,status,statusTone,milikSaya);

@override
String toString() {
  return 'PasienIgd(noReg: $noReg, noRm: $noRm, nama: $nama, umur: $umur, jk: $jk, bed: $bed, datang: $datang, triage: $triage, keluhan: $keluhan, status: $status, statusTone: $statusTone, milikSaya: $milikSaya)';
}


}

/// @nodoc
abstract mixin class _$PasienIgdCopyWith<$Res> implements $PasienIgdCopyWith<$Res> {
  factory _$PasienIgdCopyWith(_PasienIgd value, $Res Function(_PasienIgd) _then) = __$PasienIgdCopyWithImpl;
@override @useResult
$Res call({
 String noReg, String noRm, String nama, String umur, String jk, String bed, String datang, int triage, String keluhan, String status, StatusTone statusTone, bool milikSaya
});




}
/// @nodoc
class __$PasienIgdCopyWithImpl<$Res>
    implements _$PasienIgdCopyWith<$Res> {
  __$PasienIgdCopyWithImpl(this._self, this._then);

  final _PasienIgd _self;
  final $Res Function(_PasienIgd) _then;

/// Create a copy of PasienIgd
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noReg = null,Object? noRm = null,Object? nama = null,Object? umur = null,Object? jk = null,Object? bed = null,Object? datang = null,Object? triage = null,Object? keluhan = null,Object? status = null,Object? statusTone = null,Object? milikSaya = null,}) {
  return _then(_PasienIgd(
noReg: null == noReg ? _self.noReg : noReg // ignore: cast_nullable_to_non_nullable
as String,noRm: null == noRm ? _self.noRm : noRm // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,umur: null == umur ? _self.umur : umur // ignore: cast_nullable_to_non_nullable
as String,jk: null == jk ? _self.jk : jk // ignore: cast_nullable_to_non_nullable
as String,bed: null == bed ? _self.bed : bed // ignore: cast_nullable_to_non_nullable
as String,datang: null == datang ? _self.datang : datang // ignore: cast_nullable_to_non_nullable
as String,triage: null == triage ? _self.triage : triage // ignore: cast_nullable_to_non_nullable
as int,keluhan: null == keluhan ? _self.keluhan : keluhan // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusTone: null == statusTone ? _self.statusTone : statusTone // ignore: cast_nullable_to_non_nullable
as StatusTone,milikSaya: null == milikSaya ? _self.milikSaya : milikSaya // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
