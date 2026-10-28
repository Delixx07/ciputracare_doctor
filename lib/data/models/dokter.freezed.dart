// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dokter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Dokter {

 String get nama; String get kode; String get unit; String? get shift;
/// Create a copy of Dokter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DokterCopyWith<Dokter> get copyWith => _$DokterCopyWithImpl<Dokter>(this as Dokter, _$identity);

  /// Serializes this Dokter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dokter&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.kode, kode) || other.kode == kode)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.shift, shift) || other.shift == shift));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nama,kode,unit,shift);

@override
String toString() {
  return 'Dokter(nama: $nama, kode: $kode, unit: $unit, shift: $shift)';
}


}

/// @nodoc
abstract mixin class $DokterCopyWith<$Res>  {
  factory $DokterCopyWith(Dokter value, $Res Function(Dokter) _then) = _$DokterCopyWithImpl;
@useResult
$Res call({
 String nama, String kode, String unit, String? shift
});




}
/// @nodoc
class _$DokterCopyWithImpl<$Res>
    implements $DokterCopyWith<$Res> {
  _$DokterCopyWithImpl(this._self, this._then);

  final Dokter _self;
  final $Res Function(Dokter) _then;

/// Create a copy of Dokter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nama = null,Object? kode = null,Object? unit = null,Object? shift = freezed,}) {
  return _then(_self.copyWith(
nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,kode: null == kode ? _self.kode : kode // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Dokter].
extension DokterPatterns on Dokter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Dokter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Dokter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Dokter value)  $default,){
final _that = this;
switch (_that) {
case _Dokter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Dokter value)?  $default,){
final _that = this;
switch (_that) {
case _Dokter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nama,  String kode,  String unit,  String? shift)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Dokter() when $default != null:
return $default(_that.nama,_that.kode,_that.unit,_that.shift);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nama,  String kode,  String unit,  String? shift)  $default,) {final _that = this;
switch (_that) {
case _Dokter():
return $default(_that.nama,_that.kode,_that.unit,_that.shift);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nama,  String kode,  String unit,  String? shift)?  $default,) {final _that = this;
switch (_that) {
case _Dokter() when $default != null:
return $default(_that.nama,_that.kode,_that.unit,_that.shift);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Dokter implements Dokter {
  const _Dokter({required this.nama, required this.kode, required this.unit, this.shift});
  factory _Dokter.fromJson(Map<String, dynamic> json) => _$DokterFromJson(json);

@override final  String nama;
@override final  String kode;
@override final  String unit;
@override final  String? shift;

/// Create a copy of Dokter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DokterCopyWith<_Dokter> get copyWith => __$DokterCopyWithImpl<_Dokter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DokterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dokter&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.kode, kode) || other.kode == kode)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.shift, shift) || other.shift == shift));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nama,kode,unit,shift);

@override
String toString() {
  return 'Dokter(nama: $nama, kode: $kode, unit: $unit, shift: $shift)';
}


}

/// @nodoc
abstract mixin class _$DokterCopyWith<$Res> implements $DokterCopyWith<$Res> {
  factory _$DokterCopyWith(_Dokter value, $Res Function(_Dokter) _then) = __$DokterCopyWithImpl;
@override @useResult
$Res call({
 String nama, String kode, String unit, String? shift
});




}
/// @nodoc
class __$DokterCopyWithImpl<$Res>
    implements _$DokterCopyWith<$Res> {
  __$DokterCopyWithImpl(this._self, this._then);

  final _Dokter _self;
  final $Res Function(_Dokter) _then;

/// Create a copy of Dokter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nama = null,Object? kode = null,Object? unit = null,Object? shift = freezed,}) {
  return _then(_Dokter(
nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,kode: null == kode ? _self.kode : kode // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
