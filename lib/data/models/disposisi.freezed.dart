// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disposisi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Disposisi {

/// Mis. "Belum diproses".
 String get status; String get rencana; String? get ruang; String? get dpjp; String? get penjamin; String? get indikasi; String? get catatan;
/// Create a copy of Disposisi
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisposisiCopyWith<Disposisi> get copyWith => _$DisposisiCopyWithImpl<Disposisi>(this as Disposisi, _$identity);

  /// Serializes this Disposisi to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Disposisi&&(identical(other.status, status) || other.status == status)&&(identical(other.rencana, rencana) || other.rencana == rencana)&&(identical(other.ruang, ruang) || other.ruang == ruang)&&(identical(other.dpjp, dpjp) || other.dpjp == dpjp)&&(identical(other.penjamin, penjamin) || other.penjamin == penjamin)&&(identical(other.indikasi, indikasi) || other.indikasi == indikasi)&&(identical(other.catatan, catatan) || other.catatan == catatan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,rencana,ruang,dpjp,penjamin,indikasi,catatan);

@override
String toString() {
  return 'Disposisi(status: $status, rencana: $rencana, ruang: $ruang, dpjp: $dpjp, penjamin: $penjamin, indikasi: $indikasi, catatan: $catatan)';
}


}

/// @nodoc
abstract mixin class $DisposisiCopyWith<$Res>  {
  factory $DisposisiCopyWith(Disposisi value, $Res Function(Disposisi) _then) = _$DisposisiCopyWithImpl;
@useResult
$Res call({
 String status, String rencana, String? ruang, String? dpjp, String? penjamin, String? indikasi, String? catatan
});




}
/// @nodoc
class _$DisposisiCopyWithImpl<$Res>
    implements $DisposisiCopyWith<$Res> {
  _$DisposisiCopyWithImpl(this._self, this._then);

  final Disposisi _self;
  final $Res Function(Disposisi) _then;

/// Create a copy of Disposisi
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? rencana = null,Object? ruang = freezed,Object? dpjp = freezed,Object? penjamin = freezed,Object? indikasi = freezed,Object? catatan = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,rencana: null == rencana ? _self.rencana : rencana // ignore: cast_nullable_to_non_nullable
as String,ruang: freezed == ruang ? _self.ruang : ruang // ignore: cast_nullable_to_non_nullable
as String?,dpjp: freezed == dpjp ? _self.dpjp : dpjp // ignore: cast_nullable_to_non_nullable
as String?,penjamin: freezed == penjamin ? _self.penjamin : penjamin // ignore: cast_nullable_to_non_nullable
as String?,indikasi: freezed == indikasi ? _self.indikasi : indikasi // ignore: cast_nullable_to_non_nullable
as String?,catatan: freezed == catatan ? _self.catatan : catatan // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Disposisi].
extension DisposisiPatterns on Disposisi {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Disposisi value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Disposisi() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Disposisi value)  $default,){
final _that = this;
switch (_that) {
case _Disposisi():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Disposisi value)?  $default,){
final _that = this;
switch (_that) {
case _Disposisi() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String rencana,  String? ruang,  String? dpjp,  String? penjamin,  String? indikasi,  String? catatan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Disposisi() when $default != null:
return $default(_that.status,_that.rencana,_that.ruang,_that.dpjp,_that.penjamin,_that.indikasi,_that.catatan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String rencana,  String? ruang,  String? dpjp,  String? penjamin,  String? indikasi,  String? catatan)  $default,) {final _that = this;
switch (_that) {
case _Disposisi():
return $default(_that.status,_that.rencana,_that.ruang,_that.dpjp,_that.penjamin,_that.indikasi,_that.catatan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String rencana,  String? ruang,  String? dpjp,  String? penjamin,  String? indikasi,  String? catatan)?  $default,) {final _that = this;
switch (_that) {
case _Disposisi() when $default != null:
return $default(_that.status,_that.rencana,_that.ruang,_that.dpjp,_that.penjamin,_that.indikasi,_that.catatan);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Disposisi implements Disposisi {
  const _Disposisi({required this.status, required this.rencana, this.ruang, this.dpjp, this.penjamin, this.indikasi, this.catatan});
  factory _Disposisi.fromJson(Map<String, dynamic> json) => _$DisposisiFromJson(json);

/// Mis. "Belum diproses".
@override final  String status;
@override final  String rencana;
@override final  String? ruang;
@override final  String? dpjp;
@override final  String? penjamin;
@override final  String? indikasi;
@override final  String? catatan;

/// Create a copy of Disposisi
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisposisiCopyWith<_Disposisi> get copyWith => __$DisposisiCopyWithImpl<_Disposisi>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisposisiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Disposisi&&(identical(other.status, status) || other.status == status)&&(identical(other.rencana, rencana) || other.rencana == rencana)&&(identical(other.ruang, ruang) || other.ruang == ruang)&&(identical(other.dpjp, dpjp) || other.dpjp == dpjp)&&(identical(other.penjamin, penjamin) || other.penjamin == penjamin)&&(identical(other.indikasi, indikasi) || other.indikasi == indikasi)&&(identical(other.catatan, catatan) || other.catatan == catatan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,rencana,ruang,dpjp,penjamin,indikasi,catatan);

@override
String toString() {
  return 'Disposisi(status: $status, rencana: $rencana, ruang: $ruang, dpjp: $dpjp, penjamin: $penjamin, indikasi: $indikasi, catatan: $catatan)';
}


}

/// @nodoc
abstract mixin class _$DisposisiCopyWith<$Res> implements $DisposisiCopyWith<$Res> {
  factory _$DisposisiCopyWith(_Disposisi value, $Res Function(_Disposisi) _then) = __$DisposisiCopyWithImpl;
@override @useResult
$Res call({
 String status, String rencana, String? ruang, String? dpjp, String? penjamin, String? indikasi, String? catatan
});




}
/// @nodoc
class __$DisposisiCopyWithImpl<$Res>
    implements _$DisposisiCopyWith<$Res> {
  __$DisposisiCopyWithImpl(this._self, this._then);

  final _Disposisi _self;
  final $Res Function(_Disposisi) _then;

/// Create a copy of Disposisi
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? rencana = null,Object? ruang = freezed,Object? dpjp = freezed,Object? penjamin = freezed,Object? indikasi = freezed,Object? catatan = freezed,}) {
  return _then(_Disposisi(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,rencana: null == rencana ? _self.rencana : rencana // ignore: cast_nullable_to_non_nullable
as String,ruang: freezed == ruang ? _self.ruang : ruang // ignore: cast_nullable_to_non_nullable
as String?,dpjp: freezed == dpjp ? _self.dpjp : dpjp // ignore: cast_nullable_to_non_nullable
as String?,penjamin: freezed == penjamin ? _self.penjamin : penjamin // ignore: cast_nullable_to_non_nullable
as String?,indikasi: freezed == indikasi ? _self.indikasi : indikasi // ignore: cast_nullable_to_non_nullable
as String?,catatan: freezed == catatan ? _self.catatan : catatan // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
