// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {

 AuthStatus get status;/// Dokter yang masuk / dokter pemilik perangkat saat terkunci.
 Dokter? get dokter;/// PIN lokal sudah dibuat di perangkat ini.
 bool get punyaPin;/// Preferensi buka dengan biometrik (lokal).
 bool get biometrik;/// Baru masuk dengan "Ingat perangkat" dan belum punya PIN.
 bool get perluBuatPin; int get gagalPin;/// Sesi dikunci karena tidak aktif: PIN tampil di atas layar terakhir (navigasi tetap).
 bool get sesiTerkunci;/// Pesan untuk layar masuk, mis. setelah terlalu banyak percobaan PIN.
 String? get pesan;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.dokter, dokter) || other.dokter == dokter)&&(identical(other.punyaPin, punyaPin) || other.punyaPin == punyaPin)&&(identical(other.biometrik, biometrik) || other.biometrik == biometrik)&&(identical(other.perluBuatPin, perluBuatPin) || other.perluBuatPin == perluBuatPin)&&(identical(other.gagalPin, gagalPin) || other.gagalPin == gagalPin)&&(identical(other.sesiTerkunci, sesiTerkunci) || other.sesiTerkunci == sesiTerkunci)&&(identical(other.pesan, pesan) || other.pesan == pesan));
}


@override
int get hashCode => Object.hash(runtimeType,status,dokter,punyaPin,biometrik,perluBuatPin,gagalPin,sesiTerkunci,pesan);

@override
String toString() {
  return 'AuthState(status: $status, dokter: $dokter, punyaPin: $punyaPin, biometrik: $biometrik, perluBuatPin: $perluBuatPin, gagalPin: $gagalPin, sesiTerkunci: $sesiTerkunci, pesan: $pesan)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 AuthStatus status, Dokter? dokter, bool punyaPin, bool biometrik, bool perluBuatPin, int gagalPin, bool sesiTerkunci, String? pesan
});


$DokterCopyWith<$Res>? get dokter;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? dokter = freezed,Object? punyaPin = null,Object? biometrik = null,Object? perluBuatPin = null,Object? gagalPin = null,Object? sesiTerkunci = null,Object? pesan = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthStatus,dokter: freezed == dokter ? _self.dokter : dokter // ignore: cast_nullable_to_non_nullable
as Dokter?,punyaPin: null == punyaPin ? _self.punyaPin : punyaPin // ignore: cast_nullable_to_non_nullable
as bool,biometrik: null == biometrik ? _self.biometrik : biometrik // ignore: cast_nullable_to_non_nullable
as bool,perluBuatPin: null == perluBuatPin ? _self.perluBuatPin : perluBuatPin // ignore: cast_nullable_to_non_nullable
as bool,gagalPin: null == gagalPin ? _self.gagalPin : gagalPin // ignore: cast_nullable_to_non_nullable
as int,sesiTerkunci: null == sesiTerkunci ? _self.sesiTerkunci : sesiTerkunci // ignore: cast_nullable_to_non_nullable
as bool,pesan: freezed == pesan ? _self.pesan : pesan // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DokterCopyWith<$Res>? get dokter {
    if (_self.dokter == null) {
    return null;
  }

  return $DokterCopyWith<$Res>(_self.dokter!, (value) {
    return _then(_self.copyWith(dokter: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuthStatus status,  Dokter? dokter,  bool punyaPin,  bool biometrik,  bool perluBuatPin,  int gagalPin,  bool sesiTerkunci,  String? pesan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.status,_that.dokter,_that.punyaPin,_that.biometrik,_that.perluBuatPin,_that.gagalPin,_that.sesiTerkunci,_that.pesan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuthStatus status,  Dokter? dokter,  bool punyaPin,  bool biometrik,  bool perluBuatPin,  int gagalPin,  bool sesiTerkunci,  String? pesan)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.status,_that.dokter,_that.punyaPin,_that.biometrik,_that.perluBuatPin,_that.gagalPin,_that.sesiTerkunci,_that.pesan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuthStatus status,  Dokter? dokter,  bool punyaPin,  bool biometrik,  bool perluBuatPin,  int gagalPin,  bool sesiTerkunci,  String? pesan)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.status,_that.dokter,_that.punyaPin,_that.biometrik,_that.perluBuatPin,_that.gagalPin,_that.sesiTerkunci,_that.pesan);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.status = AuthStatus.keluar, this.dokter, this.punyaPin = false, this.biometrik = false, this.perluBuatPin = false, this.gagalPin = 0, this.sesiTerkunci = false, this.pesan});
  

@override@JsonKey() final  AuthStatus status;
/// Dokter yang masuk / dokter pemilik perangkat saat terkunci.
@override final  Dokter? dokter;
/// PIN lokal sudah dibuat di perangkat ini.
@override@JsonKey() final  bool punyaPin;
/// Preferensi buka dengan biometrik (lokal).
@override@JsonKey() final  bool biometrik;
/// Baru masuk dengan "Ingat perangkat" dan belum punya PIN.
@override@JsonKey() final  bool perluBuatPin;
@override@JsonKey() final  int gagalPin;
/// Sesi dikunci karena tidak aktif: PIN tampil di atas layar terakhir (navigasi tetap).
@override@JsonKey() final  bool sesiTerkunci;
/// Pesan untuk layar masuk, mis. setelah terlalu banyak percobaan PIN.
@override final  String? pesan;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.dokter, dokter) || other.dokter == dokter)&&(identical(other.punyaPin, punyaPin) || other.punyaPin == punyaPin)&&(identical(other.biometrik, biometrik) || other.biometrik == biometrik)&&(identical(other.perluBuatPin, perluBuatPin) || other.perluBuatPin == perluBuatPin)&&(identical(other.gagalPin, gagalPin) || other.gagalPin == gagalPin)&&(identical(other.sesiTerkunci, sesiTerkunci) || other.sesiTerkunci == sesiTerkunci)&&(identical(other.pesan, pesan) || other.pesan == pesan));
}


@override
int get hashCode => Object.hash(runtimeType,status,dokter,punyaPin,biometrik,perluBuatPin,gagalPin,sesiTerkunci,pesan);

@override
String toString() {
  return 'AuthState(status: $status, dokter: $dokter, punyaPin: $punyaPin, biometrik: $biometrik, perluBuatPin: $perluBuatPin, gagalPin: $gagalPin, sesiTerkunci: $sesiTerkunci, pesan: $pesan)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 AuthStatus status, Dokter? dokter, bool punyaPin, bool biometrik, bool perluBuatPin, int gagalPin, bool sesiTerkunci, String? pesan
});


@override $DokterCopyWith<$Res>? get dokter;

}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? dokter = freezed,Object? punyaPin = null,Object? biometrik = null,Object? perluBuatPin = null,Object? gagalPin = null,Object? sesiTerkunci = null,Object? pesan = freezed,}) {
  return _then(_AuthState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthStatus,dokter: freezed == dokter ? _self.dokter : dokter // ignore: cast_nullable_to_non_nullable
as Dokter?,punyaPin: null == punyaPin ? _self.punyaPin : punyaPin // ignore: cast_nullable_to_non_nullable
as bool,biometrik: null == biometrik ? _self.biometrik : biometrik // ignore: cast_nullable_to_non_nullable
as bool,perluBuatPin: null == perluBuatPin ? _self.perluBuatPin : perluBuatPin // ignore: cast_nullable_to_non_nullable
as bool,gagalPin: null == gagalPin ? _self.gagalPin : gagalPin // ignore: cast_nullable_to_non_nullable
as int,sesiTerkunci: null == sesiTerkunci ? _self.sesiTerkunci : sesiTerkunci // ignore: cast_nullable_to_non_nullable
as bool,pesan: freezed == pesan ? _self.pesan : pesan // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DokterCopyWith<$Res>? get dokter {
    if (_self.dokter == null) {
    return null;
  }

  return $DokterCopyWith<$Res>(_self.dokter!, (value) {
    return _then(_self.copyWith(dokter: value));
  });
}
}

// dart format on
