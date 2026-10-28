// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cppt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cppt {

/// PPA penulis, mis. "dr. Andreas Wijaya · Dokter IGD".
 String get ppa; String get waktu; String get status;@JsonKey(name: 'S') String get s;@JsonKey(name: 'O') String get o;@JsonKey(name: 'A') String get a;@JsonKey(name: 'P') String get p;
/// Create a copy of Cppt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CpptCopyWith<Cppt> get copyWith => _$CpptCopyWithImpl<Cppt>(this as Cppt, _$identity);

  /// Serializes this Cppt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cppt&&(identical(other.ppa, ppa) || other.ppa == ppa)&&(identical(other.waktu, waktu) || other.waktu == waktu)&&(identical(other.status, status) || other.status == status)&&(identical(other.s, s) || other.s == s)&&(identical(other.o, o) || other.o == o)&&(identical(other.a, a) || other.a == a)&&(identical(other.p, p) || other.p == p));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ppa,waktu,status,s,o,a,p);

@override
String toString() {
  return 'Cppt(ppa: $ppa, waktu: $waktu, status: $status, s: $s, o: $o, a: $a, p: $p)';
}


}

/// @nodoc
abstract mixin class $CpptCopyWith<$Res>  {
  factory $CpptCopyWith(Cppt value, $Res Function(Cppt) _then) = _$CpptCopyWithImpl;
@useResult
$Res call({
 String ppa, String waktu, String status,@JsonKey(name: 'S') String s,@JsonKey(name: 'O') String o,@JsonKey(name: 'A') String a,@JsonKey(name: 'P') String p
});




}
/// @nodoc
class _$CpptCopyWithImpl<$Res>
    implements $CpptCopyWith<$Res> {
  _$CpptCopyWithImpl(this._self, this._then);

  final Cppt _self;
  final $Res Function(Cppt) _then;

/// Create a copy of Cppt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ppa = null,Object? waktu = null,Object? status = null,Object? s = null,Object? o = null,Object? a = null,Object? p = null,}) {
  return _then(_self.copyWith(
ppa: null == ppa ? _self.ppa : ppa // ignore: cast_nullable_to_non_nullable
as String,waktu: null == waktu ? _self.waktu : waktu // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,s: null == s ? _self.s : s // ignore: cast_nullable_to_non_nullable
as String,o: null == o ? _self.o : o // ignore: cast_nullable_to_non_nullable
as String,a: null == a ? _self.a : a // ignore: cast_nullable_to_non_nullable
as String,p: null == p ? _self.p : p // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Cppt].
extension CpptPatterns on Cppt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cppt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cppt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cppt value)  $default,){
final _that = this;
switch (_that) {
case _Cppt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cppt value)?  $default,){
final _that = this;
switch (_that) {
case _Cppt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ppa,  String waktu,  String status, @JsonKey(name: 'S')  String s, @JsonKey(name: 'O')  String o, @JsonKey(name: 'A')  String a, @JsonKey(name: 'P')  String p)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cppt() when $default != null:
return $default(_that.ppa,_that.waktu,_that.status,_that.s,_that.o,_that.a,_that.p);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ppa,  String waktu,  String status, @JsonKey(name: 'S')  String s, @JsonKey(name: 'O')  String o, @JsonKey(name: 'A')  String a, @JsonKey(name: 'P')  String p)  $default,) {final _that = this;
switch (_that) {
case _Cppt():
return $default(_that.ppa,_that.waktu,_that.status,_that.s,_that.o,_that.a,_that.p);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ppa,  String waktu,  String status, @JsonKey(name: 'S')  String s, @JsonKey(name: 'O')  String o, @JsonKey(name: 'A')  String a, @JsonKey(name: 'P')  String p)?  $default,) {final _that = this;
switch (_that) {
case _Cppt() when $default != null:
return $default(_that.ppa,_that.waktu,_that.status,_that.s,_that.o,_that.a,_that.p);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cppt extends Cppt {
  const _Cppt({required this.ppa, required this.waktu, required this.status, @JsonKey(name: 'S') required this.s, @JsonKey(name: 'O') required this.o, @JsonKey(name: 'A') required this.a, @JsonKey(name: 'P') required this.p}): super._();
  factory _Cppt.fromJson(Map<String, dynamic> json) => _$CpptFromJson(json);

/// PPA penulis, mis. "dr. Andreas Wijaya · Dokter IGD".
@override final  String ppa;
@override final  String waktu;
@override final  String status;
@override@JsonKey(name: 'S') final  String s;
@override@JsonKey(name: 'O') final  String o;
@override@JsonKey(name: 'A') final  String a;
@override@JsonKey(name: 'P') final  String p;

/// Create a copy of Cppt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CpptCopyWith<_Cppt> get copyWith => __$CpptCopyWithImpl<_Cppt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CpptToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cppt&&(identical(other.ppa, ppa) || other.ppa == ppa)&&(identical(other.waktu, waktu) || other.waktu == waktu)&&(identical(other.status, status) || other.status == status)&&(identical(other.s, s) || other.s == s)&&(identical(other.o, o) || other.o == o)&&(identical(other.a, a) || other.a == a)&&(identical(other.p, p) || other.p == p));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ppa,waktu,status,s,o,a,p);

@override
String toString() {
  return 'Cppt(ppa: $ppa, waktu: $waktu, status: $status, s: $s, o: $o, a: $a, p: $p)';
}


}

/// @nodoc
abstract mixin class _$CpptCopyWith<$Res> implements $CpptCopyWith<$Res> {
  factory _$CpptCopyWith(_Cppt value, $Res Function(_Cppt) _then) = __$CpptCopyWithImpl;
@override @useResult
$Res call({
 String ppa, String waktu, String status,@JsonKey(name: 'S') String s,@JsonKey(name: 'O') String o,@JsonKey(name: 'A') String a,@JsonKey(name: 'P') String p
});




}
/// @nodoc
class __$CpptCopyWithImpl<$Res>
    implements _$CpptCopyWith<$Res> {
  __$CpptCopyWithImpl(this._self, this._then);

  final _Cppt _self;
  final $Res Function(_Cppt) _then;

/// Create a copy of Cppt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ppa = null,Object? waktu = null,Object? status = null,Object? s = null,Object? o = null,Object? a = null,Object? p = null,}) {
  return _then(_Cppt(
ppa: null == ppa ? _self.ppa : ppa // ignore: cast_nullable_to_non_nullable
as String,waktu: null == waktu ? _self.waktu : waktu // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,s: null == s ? _self.s : s // ignore: cast_nullable_to_non_nullable
as String,o: null == o ? _self.o : o // ignore: cast_nullable_to_non_nullable
as String,a: null == a ? _self.a : a // ignore: cast_nullable_to_non_nullable
as String,p: null == p ? _self.p : p // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
