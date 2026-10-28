// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rekam_pasien.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RekamPasien {

 HeaderPasien get header; KajianAwal get kajianAwal; List<Cppt> get cppt; Disposisi get disposisi; LabPasien get lab;
/// Create a copy of RekamPasien
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RekamPasienCopyWith<RekamPasien> get copyWith => _$RekamPasienCopyWithImpl<RekamPasien>(this as RekamPasien, _$identity);

  /// Serializes this RekamPasien to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RekamPasien&&(identical(other.header, header) || other.header == header)&&(identical(other.kajianAwal, kajianAwal) || other.kajianAwal == kajianAwal)&&const DeepCollectionEquality().equals(other.cppt, cppt)&&(identical(other.disposisi, disposisi) || other.disposisi == disposisi)&&(identical(other.lab, lab) || other.lab == lab));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,kajianAwal,const DeepCollectionEquality().hash(cppt),disposisi,lab);

@override
String toString() {
  return 'RekamPasien(header: $header, kajianAwal: $kajianAwal, cppt: $cppt, disposisi: $disposisi, lab: $lab)';
}


}

/// @nodoc
abstract mixin class $RekamPasienCopyWith<$Res>  {
  factory $RekamPasienCopyWith(RekamPasien value, $Res Function(RekamPasien) _then) = _$RekamPasienCopyWithImpl;
@useResult
$Res call({
 HeaderPasien header, KajianAwal kajianAwal, List<Cppt> cppt, Disposisi disposisi, LabPasien lab
});


$HeaderPasienCopyWith<$Res> get header;$KajianAwalCopyWith<$Res> get kajianAwal;$DisposisiCopyWith<$Res> get disposisi;$LabPasienCopyWith<$Res> get lab;

}
/// @nodoc
class _$RekamPasienCopyWithImpl<$Res>
    implements $RekamPasienCopyWith<$Res> {
  _$RekamPasienCopyWithImpl(this._self, this._then);

  final RekamPasien _self;
  final $Res Function(RekamPasien) _then;

/// Create a copy of RekamPasien
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = null,Object? kajianAwal = null,Object? cppt = null,Object? disposisi = null,Object? lab = null,}) {
  return _then(_self.copyWith(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as HeaderPasien,kajianAwal: null == kajianAwal ? _self.kajianAwal : kajianAwal // ignore: cast_nullable_to_non_nullable
as KajianAwal,cppt: null == cppt ? _self.cppt : cppt // ignore: cast_nullable_to_non_nullable
as List<Cppt>,disposisi: null == disposisi ? _self.disposisi : disposisi // ignore: cast_nullable_to_non_nullable
as Disposisi,lab: null == lab ? _self.lab : lab // ignore: cast_nullable_to_non_nullable
as LabPasien,
  ));
}
/// Create a copy of RekamPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeaderPasienCopyWith<$Res> get header {
  
  return $HeaderPasienCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of RekamPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KajianAwalCopyWith<$Res> get kajianAwal {
  
  return $KajianAwalCopyWith<$Res>(_self.kajianAwal, (value) {
    return _then(_self.copyWith(kajianAwal: value));
  });
}/// Create a copy of RekamPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisposisiCopyWith<$Res> get disposisi {
  
  return $DisposisiCopyWith<$Res>(_self.disposisi, (value) {
    return _then(_self.copyWith(disposisi: value));
  });
}/// Create a copy of RekamPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LabPasienCopyWith<$Res> get lab {
  
  return $LabPasienCopyWith<$Res>(_self.lab, (value) {
    return _then(_self.copyWith(lab: value));
  });
}
}


/// Adds pattern-matching-related methods to [RekamPasien].
extension RekamPasienPatterns on RekamPasien {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RekamPasien value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RekamPasien() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RekamPasien value)  $default,){
final _that = this;
switch (_that) {
case _RekamPasien():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RekamPasien value)?  $default,){
final _that = this;
switch (_that) {
case _RekamPasien() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HeaderPasien header,  KajianAwal kajianAwal,  List<Cppt> cppt,  Disposisi disposisi,  LabPasien lab)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RekamPasien() when $default != null:
return $default(_that.header,_that.kajianAwal,_that.cppt,_that.disposisi,_that.lab);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HeaderPasien header,  KajianAwal kajianAwal,  List<Cppt> cppt,  Disposisi disposisi,  LabPasien lab)  $default,) {final _that = this;
switch (_that) {
case _RekamPasien():
return $default(_that.header,_that.kajianAwal,_that.cppt,_that.disposisi,_that.lab);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HeaderPasien header,  KajianAwal kajianAwal,  List<Cppt> cppt,  Disposisi disposisi,  LabPasien lab)?  $default,) {final _that = this;
switch (_that) {
case _RekamPasien() when $default != null:
return $default(_that.header,_that.kajianAwal,_that.cppt,_that.disposisi,_that.lab);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RekamPasien implements RekamPasien {
  const _RekamPasien({required this.header, required this.kajianAwal, final  List<Cppt> cppt = const <Cppt>[], required this.disposisi, required this.lab}): _cppt = cppt;
  factory _RekamPasien.fromJson(Map<String, dynamic> json) => _$RekamPasienFromJson(json);

@override final  HeaderPasien header;
@override final  KajianAwal kajianAwal;
 final  List<Cppt> _cppt;
@override@JsonKey() List<Cppt> get cppt {
  if (_cppt is EqualUnmodifiableListView) return _cppt;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cppt);
}

@override final  Disposisi disposisi;
@override final  LabPasien lab;

/// Create a copy of RekamPasien
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RekamPasienCopyWith<_RekamPasien> get copyWith => __$RekamPasienCopyWithImpl<_RekamPasien>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RekamPasienToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RekamPasien&&(identical(other.header, header) || other.header == header)&&(identical(other.kajianAwal, kajianAwal) || other.kajianAwal == kajianAwal)&&const DeepCollectionEquality().equals(other._cppt, _cppt)&&(identical(other.disposisi, disposisi) || other.disposisi == disposisi)&&(identical(other.lab, lab) || other.lab == lab));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,header,kajianAwal,const DeepCollectionEquality().hash(_cppt),disposisi,lab);

@override
String toString() {
  return 'RekamPasien(header: $header, kajianAwal: $kajianAwal, cppt: $cppt, disposisi: $disposisi, lab: $lab)';
}


}

/// @nodoc
abstract mixin class _$RekamPasienCopyWith<$Res> implements $RekamPasienCopyWith<$Res> {
  factory _$RekamPasienCopyWith(_RekamPasien value, $Res Function(_RekamPasien) _then) = __$RekamPasienCopyWithImpl;
@override @useResult
$Res call({
 HeaderPasien header, KajianAwal kajianAwal, List<Cppt> cppt, Disposisi disposisi, LabPasien lab
});


@override $HeaderPasienCopyWith<$Res> get header;@override $KajianAwalCopyWith<$Res> get kajianAwal;@override $DisposisiCopyWith<$Res> get disposisi;@override $LabPasienCopyWith<$Res> get lab;

}
/// @nodoc
class __$RekamPasienCopyWithImpl<$Res>
    implements _$RekamPasienCopyWith<$Res> {
  __$RekamPasienCopyWithImpl(this._self, this._then);

  final _RekamPasien _self;
  final $Res Function(_RekamPasien) _then;

/// Create a copy of RekamPasien
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = null,Object? kajianAwal = null,Object? cppt = null,Object? disposisi = null,Object? lab = null,}) {
  return _then(_RekamPasien(
header: null == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as HeaderPasien,kajianAwal: null == kajianAwal ? _self.kajianAwal : kajianAwal // ignore: cast_nullable_to_non_nullable
as KajianAwal,cppt: null == cppt ? _self._cppt : cppt // ignore: cast_nullable_to_non_nullable
as List<Cppt>,disposisi: null == disposisi ? _self.disposisi : disposisi // ignore: cast_nullable_to_non_nullable
as Disposisi,lab: null == lab ? _self.lab : lab // ignore: cast_nullable_to_non_nullable
as LabPasien,
  ));
}

/// Create a copy of RekamPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HeaderPasienCopyWith<$Res> get header {
  
  return $HeaderPasienCopyWith<$Res>(_self.header, (value) {
    return _then(_self.copyWith(header: value));
  });
}/// Create a copy of RekamPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KajianAwalCopyWith<$Res> get kajianAwal {
  
  return $KajianAwalCopyWith<$Res>(_self.kajianAwal, (value) {
    return _then(_self.copyWith(kajianAwal: value));
  });
}/// Create a copy of RekamPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DisposisiCopyWith<$Res> get disposisi {
  
  return $DisposisiCopyWith<$Res>(_self.disposisi, (value) {
    return _then(_self.copyWith(disposisi: value));
  });
}/// Create a copy of RekamPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LabPasienCopyWith<$Res> get lab {
  
  return $LabPasienCopyWith<$Res>(_self.lab, (value) {
    return _then(_self.copyWith(lab: value));
  });
}
}

// dart format on
