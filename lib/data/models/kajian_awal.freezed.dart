// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kajian_awal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KajianAwal {

 TriageKajian get triage; Anamnesa get anamnesa; PengkajianPerawat get pengkajianPerawat; Riwayat get riwayat; Pemeriksaan get pemeriksaan; Assessment get assessment; Planning get planning;
/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KajianAwalCopyWith<KajianAwal> get copyWith => _$KajianAwalCopyWithImpl<KajianAwal>(this as KajianAwal, _$identity);

  /// Serializes this KajianAwal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KajianAwal&&(identical(other.triage, triage) || other.triage == triage)&&(identical(other.anamnesa, anamnesa) || other.anamnesa == anamnesa)&&(identical(other.pengkajianPerawat, pengkajianPerawat) || other.pengkajianPerawat == pengkajianPerawat)&&(identical(other.riwayat, riwayat) || other.riwayat == riwayat)&&(identical(other.pemeriksaan, pemeriksaan) || other.pemeriksaan == pemeriksaan)&&(identical(other.assessment, assessment) || other.assessment == assessment)&&(identical(other.planning, planning) || other.planning == planning));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,triage,anamnesa,pengkajianPerawat,riwayat,pemeriksaan,assessment,planning);

@override
String toString() {
  return 'KajianAwal(triage: $triage, anamnesa: $anamnesa, pengkajianPerawat: $pengkajianPerawat, riwayat: $riwayat, pemeriksaan: $pemeriksaan, assessment: $assessment, planning: $planning)';
}


}

/// @nodoc
abstract mixin class $KajianAwalCopyWith<$Res>  {
  factory $KajianAwalCopyWith(KajianAwal value, $Res Function(KajianAwal) _then) = _$KajianAwalCopyWithImpl;
@useResult
$Res call({
 TriageKajian triage, Anamnesa anamnesa, PengkajianPerawat pengkajianPerawat, Riwayat riwayat, Pemeriksaan pemeriksaan, Assessment assessment, Planning planning
});


$TriageKajianCopyWith<$Res> get triage;$AnamnesaCopyWith<$Res> get anamnesa;$PengkajianPerawatCopyWith<$Res> get pengkajianPerawat;$RiwayatCopyWith<$Res> get riwayat;$PemeriksaanCopyWith<$Res> get pemeriksaan;$AssessmentCopyWith<$Res> get assessment;$PlanningCopyWith<$Res> get planning;

}
/// @nodoc
class _$KajianAwalCopyWithImpl<$Res>
    implements $KajianAwalCopyWith<$Res> {
  _$KajianAwalCopyWithImpl(this._self, this._then);

  final KajianAwal _self;
  final $Res Function(KajianAwal) _then;

/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? triage = null,Object? anamnesa = null,Object? pengkajianPerawat = null,Object? riwayat = null,Object? pemeriksaan = null,Object? assessment = null,Object? planning = null,}) {
  return _then(_self.copyWith(
triage: null == triage ? _self.triage : triage // ignore: cast_nullable_to_non_nullable
as TriageKajian,anamnesa: null == anamnesa ? _self.anamnesa : anamnesa // ignore: cast_nullable_to_non_nullable
as Anamnesa,pengkajianPerawat: null == pengkajianPerawat ? _self.pengkajianPerawat : pengkajianPerawat // ignore: cast_nullable_to_non_nullable
as PengkajianPerawat,riwayat: null == riwayat ? _self.riwayat : riwayat // ignore: cast_nullable_to_non_nullable
as Riwayat,pemeriksaan: null == pemeriksaan ? _self.pemeriksaan : pemeriksaan // ignore: cast_nullable_to_non_nullable
as Pemeriksaan,assessment: null == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as Assessment,planning: null == planning ? _self.planning : planning // ignore: cast_nullable_to_non_nullable
as Planning,
  ));
}
/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TriageKajianCopyWith<$Res> get triage {
  
  return $TriageKajianCopyWith<$Res>(_self.triage, (value) {
    return _then(_self.copyWith(triage: value));
  });
}/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnamnesaCopyWith<$Res> get anamnesa {
  
  return $AnamnesaCopyWith<$Res>(_self.anamnesa, (value) {
    return _then(_self.copyWith(anamnesa: value));
  });
}/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PengkajianPerawatCopyWith<$Res> get pengkajianPerawat {
  
  return $PengkajianPerawatCopyWith<$Res>(_self.pengkajianPerawat, (value) {
    return _then(_self.copyWith(pengkajianPerawat: value));
  });
}/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiwayatCopyWith<$Res> get riwayat {
  
  return $RiwayatCopyWith<$Res>(_self.riwayat, (value) {
    return _then(_self.copyWith(riwayat: value));
  });
}/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PemeriksaanCopyWith<$Res> get pemeriksaan {
  
  return $PemeriksaanCopyWith<$Res>(_self.pemeriksaan, (value) {
    return _then(_self.copyWith(pemeriksaan: value));
  });
}/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssessmentCopyWith<$Res> get assessment {
  
  return $AssessmentCopyWith<$Res>(_self.assessment, (value) {
    return _then(_self.copyWith(assessment: value));
  });
}/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanningCopyWith<$Res> get planning {
  
  return $PlanningCopyWith<$Res>(_self.planning, (value) {
    return _then(_self.copyWith(planning: value));
  });
}
}


/// Adds pattern-matching-related methods to [KajianAwal].
extension KajianAwalPatterns on KajianAwal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KajianAwal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KajianAwal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KajianAwal value)  $default,){
final _that = this;
switch (_that) {
case _KajianAwal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KajianAwal value)?  $default,){
final _that = this;
switch (_that) {
case _KajianAwal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TriageKajian triage,  Anamnesa anamnesa,  PengkajianPerawat pengkajianPerawat,  Riwayat riwayat,  Pemeriksaan pemeriksaan,  Assessment assessment,  Planning planning)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KajianAwal() when $default != null:
return $default(_that.triage,_that.anamnesa,_that.pengkajianPerawat,_that.riwayat,_that.pemeriksaan,_that.assessment,_that.planning);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TriageKajian triage,  Anamnesa anamnesa,  PengkajianPerawat pengkajianPerawat,  Riwayat riwayat,  Pemeriksaan pemeriksaan,  Assessment assessment,  Planning planning)  $default,) {final _that = this;
switch (_that) {
case _KajianAwal():
return $default(_that.triage,_that.anamnesa,_that.pengkajianPerawat,_that.riwayat,_that.pemeriksaan,_that.assessment,_that.planning);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TriageKajian triage,  Anamnesa anamnesa,  PengkajianPerawat pengkajianPerawat,  Riwayat riwayat,  Pemeriksaan pemeriksaan,  Assessment assessment,  Planning planning)?  $default,) {final _that = this;
switch (_that) {
case _KajianAwal() when $default != null:
return $default(_that.triage,_that.anamnesa,_that.pengkajianPerawat,_that.riwayat,_that.pemeriksaan,_that.assessment,_that.planning);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KajianAwal implements KajianAwal {
  const _KajianAwal({required this.triage, required this.anamnesa, required this.pengkajianPerawat, required this.riwayat, required this.pemeriksaan, required this.assessment, required this.planning});
  factory _KajianAwal.fromJson(Map<String, dynamic> json) => _$KajianAwalFromJson(json);

@override final  TriageKajian triage;
@override final  Anamnesa anamnesa;
@override final  PengkajianPerawat pengkajianPerawat;
@override final  Riwayat riwayat;
@override final  Pemeriksaan pemeriksaan;
@override final  Assessment assessment;
@override final  Planning planning;

/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KajianAwalCopyWith<_KajianAwal> get copyWith => __$KajianAwalCopyWithImpl<_KajianAwal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KajianAwalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KajianAwal&&(identical(other.triage, triage) || other.triage == triage)&&(identical(other.anamnesa, anamnesa) || other.anamnesa == anamnesa)&&(identical(other.pengkajianPerawat, pengkajianPerawat) || other.pengkajianPerawat == pengkajianPerawat)&&(identical(other.riwayat, riwayat) || other.riwayat == riwayat)&&(identical(other.pemeriksaan, pemeriksaan) || other.pemeriksaan == pemeriksaan)&&(identical(other.assessment, assessment) || other.assessment == assessment)&&(identical(other.planning, planning) || other.planning == planning));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,triage,anamnesa,pengkajianPerawat,riwayat,pemeriksaan,assessment,planning);

@override
String toString() {
  return 'KajianAwal(triage: $triage, anamnesa: $anamnesa, pengkajianPerawat: $pengkajianPerawat, riwayat: $riwayat, pemeriksaan: $pemeriksaan, assessment: $assessment, planning: $planning)';
}


}

/// @nodoc
abstract mixin class _$KajianAwalCopyWith<$Res> implements $KajianAwalCopyWith<$Res> {
  factory _$KajianAwalCopyWith(_KajianAwal value, $Res Function(_KajianAwal) _then) = __$KajianAwalCopyWithImpl;
@override @useResult
$Res call({
 TriageKajian triage, Anamnesa anamnesa, PengkajianPerawat pengkajianPerawat, Riwayat riwayat, Pemeriksaan pemeriksaan, Assessment assessment, Planning planning
});


@override $TriageKajianCopyWith<$Res> get triage;@override $AnamnesaCopyWith<$Res> get anamnesa;@override $PengkajianPerawatCopyWith<$Res> get pengkajianPerawat;@override $RiwayatCopyWith<$Res> get riwayat;@override $PemeriksaanCopyWith<$Res> get pemeriksaan;@override $AssessmentCopyWith<$Res> get assessment;@override $PlanningCopyWith<$Res> get planning;

}
/// @nodoc
class __$KajianAwalCopyWithImpl<$Res>
    implements _$KajianAwalCopyWith<$Res> {
  __$KajianAwalCopyWithImpl(this._self, this._then);

  final _KajianAwal _self;
  final $Res Function(_KajianAwal) _then;

/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? triage = null,Object? anamnesa = null,Object? pengkajianPerawat = null,Object? riwayat = null,Object? pemeriksaan = null,Object? assessment = null,Object? planning = null,}) {
  return _then(_KajianAwal(
triage: null == triage ? _self.triage : triage // ignore: cast_nullable_to_non_nullable
as TriageKajian,anamnesa: null == anamnesa ? _self.anamnesa : anamnesa // ignore: cast_nullable_to_non_nullable
as Anamnesa,pengkajianPerawat: null == pengkajianPerawat ? _self.pengkajianPerawat : pengkajianPerawat // ignore: cast_nullable_to_non_nullable
as PengkajianPerawat,riwayat: null == riwayat ? _self.riwayat : riwayat // ignore: cast_nullable_to_non_nullable
as Riwayat,pemeriksaan: null == pemeriksaan ? _self.pemeriksaan : pemeriksaan // ignore: cast_nullable_to_non_nullable
as Pemeriksaan,assessment: null == assessment ? _self.assessment : assessment // ignore: cast_nullable_to_non_nullable
as Assessment,planning: null == planning ? _self.planning : planning // ignore: cast_nullable_to_non_nullable
as Planning,
  ));
}

/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TriageKajianCopyWith<$Res> get triage {
  
  return $TriageKajianCopyWith<$Res>(_self.triage, (value) {
    return _then(_self.copyWith(triage: value));
  });
}/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnamnesaCopyWith<$Res> get anamnesa {
  
  return $AnamnesaCopyWith<$Res>(_self.anamnesa, (value) {
    return _then(_self.copyWith(anamnesa: value));
  });
}/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PengkajianPerawatCopyWith<$Res> get pengkajianPerawat {
  
  return $PengkajianPerawatCopyWith<$Res>(_self.pengkajianPerawat, (value) {
    return _then(_self.copyWith(pengkajianPerawat: value));
  });
}/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiwayatCopyWith<$Res> get riwayat {
  
  return $RiwayatCopyWith<$Res>(_self.riwayat, (value) {
    return _then(_self.copyWith(riwayat: value));
  });
}/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PemeriksaanCopyWith<$Res> get pemeriksaan {
  
  return $PemeriksaanCopyWith<$Res>(_self.pemeriksaan, (value) {
    return _then(_self.copyWith(pemeriksaan: value));
  });
}/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssessmentCopyWith<$Res> get assessment {
  
  return $AssessmentCopyWith<$Res>(_self.assessment, (value) {
    return _then(_self.copyWith(assessment: value));
  });
}/// Create a copy of KajianAwal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlanningCopyWith<$Res> get planning {
  
  return $PlanningCopyWith<$Res>(_self.planning, (value) {
    return _then(_self.copyWith(planning: value));
  });
}
}


/// @nodoc
mixin _$TriageKajian {

 String get skala; int get level; String get olehPerawat;
/// Create a copy of TriageKajian
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TriageKajianCopyWith<TriageKajian> get copyWith => _$TriageKajianCopyWithImpl<TriageKajian>(this as TriageKajian, _$identity);

  /// Serializes this TriageKajian to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TriageKajian&&(identical(other.skala, skala) || other.skala == skala)&&(identical(other.level, level) || other.level == level)&&(identical(other.olehPerawat, olehPerawat) || other.olehPerawat == olehPerawat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skala,level,olehPerawat);

@override
String toString() {
  return 'TriageKajian(skala: $skala, level: $level, olehPerawat: $olehPerawat)';
}


}

/// @nodoc
abstract mixin class $TriageKajianCopyWith<$Res>  {
  factory $TriageKajianCopyWith(TriageKajian value, $Res Function(TriageKajian) _then) = _$TriageKajianCopyWithImpl;
@useResult
$Res call({
 String skala, int level, String olehPerawat
});




}
/// @nodoc
class _$TriageKajianCopyWithImpl<$Res>
    implements $TriageKajianCopyWith<$Res> {
  _$TriageKajianCopyWithImpl(this._self, this._then);

  final TriageKajian _self;
  final $Res Function(TriageKajian) _then;

/// Create a copy of TriageKajian
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? skala = null,Object? level = null,Object? olehPerawat = null,}) {
  return _then(_self.copyWith(
skala: null == skala ? _self.skala : skala // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,olehPerawat: null == olehPerawat ? _self.olehPerawat : olehPerawat // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TriageKajian].
extension TriageKajianPatterns on TriageKajian {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TriageKajian value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TriageKajian() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TriageKajian value)  $default,){
final _that = this;
switch (_that) {
case _TriageKajian():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TriageKajian value)?  $default,){
final _that = this;
switch (_that) {
case _TriageKajian() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String skala,  int level,  String olehPerawat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TriageKajian() when $default != null:
return $default(_that.skala,_that.level,_that.olehPerawat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String skala,  int level,  String olehPerawat)  $default,) {final _that = this;
switch (_that) {
case _TriageKajian():
return $default(_that.skala,_that.level,_that.olehPerawat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String skala,  int level,  String olehPerawat)?  $default,) {final _that = this;
switch (_that) {
case _TriageKajian() when $default != null:
return $default(_that.skala,_that.level,_that.olehPerawat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TriageKajian implements TriageKajian {
  const _TriageKajian({required this.skala, required this.level, required this.olehPerawat});
  factory _TriageKajian.fromJson(Map<String, dynamic> json) => _$TriageKajianFromJson(json);

@override final  String skala;
@override final  int level;
@override final  String olehPerawat;

/// Create a copy of TriageKajian
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TriageKajianCopyWith<_TriageKajian> get copyWith => __$TriageKajianCopyWithImpl<_TriageKajian>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TriageKajianToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TriageKajian&&(identical(other.skala, skala) || other.skala == skala)&&(identical(other.level, level) || other.level == level)&&(identical(other.olehPerawat, olehPerawat) || other.olehPerawat == olehPerawat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skala,level,olehPerawat);

@override
String toString() {
  return 'TriageKajian(skala: $skala, level: $level, olehPerawat: $olehPerawat)';
}


}

/// @nodoc
abstract mixin class _$TriageKajianCopyWith<$Res> implements $TriageKajianCopyWith<$Res> {
  factory _$TriageKajianCopyWith(_TriageKajian value, $Res Function(_TriageKajian) _then) = __$TriageKajianCopyWithImpl;
@override @useResult
$Res call({
 String skala, int level, String olehPerawat
});




}
/// @nodoc
class __$TriageKajianCopyWithImpl<$Res>
    implements _$TriageKajianCopyWith<$Res> {
  __$TriageKajianCopyWithImpl(this._self, this._then);

  final _TriageKajian _self;
  final $Res Function(_TriageKajian) _then;

/// Create a copy of TriageKajian
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? skala = null,Object? level = null,Object? olehPerawat = null,}) {
  return _then(_TriageKajian(
skala: null == skala ? _self.skala : skala // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,olehPerawat: null == olehPerawat ? _self.olehPerawat : olehPerawat // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Anamnesa {

 String get tanggalJam; String get jenisKunjungan; String get sumber; String get keluhanUtama; String get rps; String get keadaanDatang; String get alasanKunjungan; bool get fastTrack;
/// Create a copy of Anamnesa
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnamnesaCopyWith<Anamnesa> get copyWith => _$AnamnesaCopyWithImpl<Anamnesa>(this as Anamnesa, _$identity);

  /// Serializes this Anamnesa to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Anamnesa&&(identical(other.tanggalJam, tanggalJam) || other.tanggalJam == tanggalJam)&&(identical(other.jenisKunjungan, jenisKunjungan) || other.jenisKunjungan == jenisKunjungan)&&(identical(other.sumber, sumber) || other.sumber == sumber)&&(identical(other.keluhanUtama, keluhanUtama) || other.keluhanUtama == keluhanUtama)&&(identical(other.rps, rps) || other.rps == rps)&&(identical(other.keadaanDatang, keadaanDatang) || other.keadaanDatang == keadaanDatang)&&(identical(other.alasanKunjungan, alasanKunjungan) || other.alasanKunjungan == alasanKunjungan)&&(identical(other.fastTrack, fastTrack) || other.fastTrack == fastTrack));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tanggalJam,jenisKunjungan,sumber,keluhanUtama,rps,keadaanDatang,alasanKunjungan,fastTrack);

@override
String toString() {
  return 'Anamnesa(tanggalJam: $tanggalJam, jenisKunjungan: $jenisKunjungan, sumber: $sumber, keluhanUtama: $keluhanUtama, rps: $rps, keadaanDatang: $keadaanDatang, alasanKunjungan: $alasanKunjungan, fastTrack: $fastTrack)';
}


}

/// @nodoc
abstract mixin class $AnamnesaCopyWith<$Res>  {
  factory $AnamnesaCopyWith(Anamnesa value, $Res Function(Anamnesa) _then) = _$AnamnesaCopyWithImpl;
@useResult
$Res call({
 String tanggalJam, String jenisKunjungan, String sumber, String keluhanUtama, String rps, String keadaanDatang, String alasanKunjungan, bool fastTrack
});




}
/// @nodoc
class _$AnamnesaCopyWithImpl<$Res>
    implements $AnamnesaCopyWith<$Res> {
  _$AnamnesaCopyWithImpl(this._self, this._then);

  final Anamnesa _self;
  final $Res Function(Anamnesa) _then;

/// Create a copy of Anamnesa
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tanggalJam = null,Object? jenisKunjungan = null,Object? sumber = null,Object? keluhanUtama = null,Object? rps = null,Object? keadaanDatang = null,Object? alasanKunjungan = null,Object? fastTrack = null,}) {
  return _then(_self.copyWith(
tanggalJam: null == tanggalJam ? _self.tanggalJam : tanggalJam // ignore: cast_nullable_to_non_nullable
as String,jenisKunjungan: null == jenisKunjungan ? _self.jenisKunjungan : jenisKunjungan // ignore: cast_nullable_to_non_nullable
as String,sumber: null == sumber ? _self.sumber : sumber // ignore: cast_nullable_to_non_nullable
as String,keluhanUtama: null == keluhanUtama ? _self.keluhanUtama : keluhanUtama // ignore: cast_nullable_to_non_nullable
as String,rps: null == rps ? _self.rps : rps // ignore: cast_nullable_to_non_nullable
as String,keadaanDatang: null == keadaanDatang ? _self.keadaanDatang : keadaanDatang // ignore: cast_nullable_to_non_nullable
as String,alasanKunjungan: null == alasanKunjungan ? _self.alasanKunjungan : alasanKunjungan // ignore: cast_nullable_to_non_nullable
as String,fastTrack: null == fastTrack ? _self.fastTrack : fastTrack // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Anamnesa].
extension AnamnesaPatterns on Anamnesa {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Anamnesa value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Anamnesa() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Anamnesa value)  $default,){
final _that = this;
switch (_that) {
case _Anamnesa():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Anamnesa value)?  $default,){
final _that = this;
switch (_that) {
case _Anamnesa() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tanggalJam,  String jenisKunjungan,  String sumber,  String keluhanUtama,  String rps,  String keadaanDatang,  String alasanKunjungan,  bool fastTrack)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Anamnesa() when $default != null:
return $default(_that.tanggalJam,_that.jenisKunjungan,_that.sumber,_that.keluhanUtama,_that.rps,_that.keadaanDatang,_that.alasanKunjungan,_that.fastTrack);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tanggalJam,  String jenisKunjungan,  String sumber,  String keluhanUtama,  String rps,  String keadaanDatang,  String alasanKunjungan,  bool fastTrack)  $default,) {final _that = this;
switch (_that) {
case _Anamnesa():
return $default(_that.tanggalJam,_that.jenisKunjungan,_that.sumber,_that.keluhanUtama,_that.rps,_that.keadaanDatang,_that.alasanKunjungan,_that.fastTrack);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tanggalJam,  String jenisKunjungan,  String sumber,  String keluhanUtama,  String rps,  String keadaanDatang,  String alasanKunjungan,  bool fastTrack)?  $default,) {final _that = this;
switch (_that) {
case _Anamnesa() when $default != null:
return $default(_that.tanggalJam,_that.jenisKunjungan,_that.sumber,_that.keluhanUtama,_that.rps,_that.keadaanDatang,_that.alasanKunjungan,_that.fastTrack);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Anamnesa implements Anamnesa {
  const _Anamnesa({required this.tanggalJam, required this.jenisKunjungan, required this.sumber, required this.keluhanUtama, required this.rps, required this.keadaanDatang, required this.alasanKunjungan, this.fastTrack = false});
  factory _Anamnesa.fromJson(Map<String, dynamic> json) => _$AnamnesaFromJson(json);

@override final  String tanggalJam;
@override final  String jenisKunjungan;
@override final  String sumber;
@override final  String keluhanUtama;
@override final  String rps;
@override final  String keadaanDatang;
@override final  String alasanKunjungan;
@override@JsonKey() final  bool fastTrack;

/// Create a copy of Anamnesa
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnamnesaCopyWith<_Anamnesa> get copyWith => __$AnamnesaCopyWithImpl<_Anamnesa>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnamnesaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Anamnesa&&(identical(other.tanggalJam, tanggalJam) || other.tanggalJam == tanggalJam)&&(identical(other.jenisKunjungan, jenisKunjungan) || other.jenisKunjungan == jenisKunjungan)&&(identical(other.sumber, sumber) || other.sumber == sumber)&&(identical(other.keluhanUtama, keluhanUtama) || other.keluhanUtama == keluhanUtama)&&(identical(other.rps, rps) || other.rps == rps)&&(identical(other.keadaanDatang, keadaanDatang) || other.keadaanDatang == keadaanDatang)&&(identical(other.alasanKunjungan, alasanKunjungan) || other.alasanKunjungan == alasanKunjungan)&&(identical(other.fastTrack, fastTrack) || other.fastTrack == fastTrack));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tanggalJam,jenisKunjungan,sumber,keluhanUtama,rps,keadaanDatang,alasanKunjungan,fastTrack);

@override
String toString() {
  return 'Anamnesa(tanggalJam: $tanggalJam, jenisKunjungan: $jenisKunjungan, sumber: $sumber, keluhanUtama: $keluhanUtama, rps: $rps, keadaanDatang: $keadaanDatang, alasanKunjungan: $alasanKunjungan, fastTrack: $fastTrack)';
}


}

/// @nodoc
abstract mixin class _$AnamnesaCopyWith<$Res> implements $AnamnesaCopyWith<$Res> {
  factory _$AnamnesaCopyWith(_Anamnesa value, $Res Function(_Anamnesa) _then) = __$AnamnesaCopyWithImpl;
@override @useResult
$Res call({
 String tanggalJam, String jenisKunjungan, String sumber, String keluhanUtama, String rps, String keadaanDatang, String alasanKunjungan, bool fastTrack
});




}
/// @nodoc
class __$AnamnesaCopyWithImpl<$Res>
    implements _$AnamnesaCopyWith<$Res> {
  __$AnamnesaCopyWithImpl(this._self, this._then);

  final _Anamnesa _self;
  final $Res Function(_Anamnesa) _then;

/// Create a copy of Anamnesa
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tanggalJam = null,Object? jenisKunjungan = null,Object? sumber = null,Object? keluhanUtama = null,Object? rps = null,Object? keadaanDatang = null,Object? alasanKunjungan = null,Object? fastTrack = null,}) {
  return _then(_Anamnesa(
tanggalJam: null == tanggalJam ? _self.tanggalJam : tanggalJam // ignore: cast_nullable_to_non_nullable
as String,jenisKunjungan: null == jenisKunjungan ? _self.jenisKunjungan : jenisKunjungan // ignore: cast_nullable_to_non_nullable
as String,sumber: null == sumber ? _self.sumber : sumber // ignore: cast_nullable_to_non_nullable
as String,keluhanUtama: null == keluhanUtama ? _self.keluhanUtama : keluhanUtama // ignore: cast_nullable_to_non_nullable
as String,rps: null == rps ? _self.rps : rps // ignore: cast_nullable_to_non_nullable
as String,keadaanDatang: null == keadaanDatang ? _self.keadaanDatang : keadaanDatang // ignore: cast_nullable_to_non_nullable
as String,alasanKunjungan: null == alasanKunjungan ? _self.alasanKunjungan : alasanKunjungan // ignore: cast_nullable_to_non_nullable
as String,fastTrack: null == fastTrack ? _self.fastTrack : fastTrack // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PengkajianPerawat {

 String get oleh; String get caraDatang; String get rujukan;/// Airway, Breathing, Circulation, Disability, Exposure → hasil.
 Map<String, String> get abcde; List<String> get abnormal;
/// Create a copy of PengkajianPerawat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PengkajianPerawatCopyWith<PengkajianPerawat> get copyWith => _$PengkajianPerawatCopyWithImpl<PengkajianPerawat>(this as PengkajianPerawat, _$identity);

  /// Serializes this PengkajianPerawat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PengkajianPerawat&&(identical(other.oleh, oleh) || other.oleh == oleh)&&(identical(other.caraDatang, caraDatang) || other.caraDatang == caraDatang)&&(identical(other.rujukan, rujukan) || other.rujukan == rujukan)&&const DeepCollectionEquality().equals(other.abcde, abcde)&&const DeepCollectionEquality().equals(other.abnormal, abnormal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oleh,caraDatang,rujukan,const DeepCollectionEquality().hash(abcde),const DeepCollectionEquality().hash(abnormal));

@override
String toString() {
  return 'PengkajianPerawat(oleh: $oleh, caraDatang: $caraDatang, rujukan: $rujukan, abcde: $abcde, abnormal: $abnormal)';
}


}

/// @nodoc
abstract mixin class $PengkajianPerawatCopyWith<$Res>  {
  factory $PengkajianPerawatCopyWith(PengkajianPerawat value, $Res Function(PengkajianPerawat) _then) = _$PengkajianPerawatCopyWithImpl;
@useResult
$Res call({
 String oleh, String caraDatang, String rujukan, Map<String, String> abcde, List<String> abnormal
});




}
/// @nodoc
class _$PengkajianPerawatCopyWithImpl<$Res>
    implements $PengkajianPerawatCopyWith<$Res> {
  _$PengkajianPerawatCopyWithImpl(this._self, this._then);

  final PengkajianPerawat _self;
  final $Res Function(PengkajianPerawat) _then;

/// Create a copy of PengkajianPerawat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oleh = null,Object? caraDatang = null,Object? rujukan = null,Object? abcde = null,Object? abnormal = null,}) {
  return _then(_self.copyWith(
oleh: null == oleh ? _self.oleh : oleh // ignore: cast_nullable_to_non_nullable
as String,caraDatang: null == caraDatang ? _self.caraDatang : caraDatang // ignore: cast_nullable_to_non_nullable
as String,rujukan: null == rujukan ? _self.rujukan : rujukan // ignore: cast_nullable_to_non_nullable
as String,abcde: null == abcde ? _self.abcde : abcde // ignore: cast_nullable_to_non_nullable
as Map<String, String>,abnormal: null == abnormal ? _self.abnormal : abnormal // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PengkajianPerawat].
extension PengkajianPerawatPatterns on PengkajianPerawat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PengkajianPerawat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PengkajianPerawat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PengkajianPerawat value)  $default,){
final _that = this;
switch (_that) {
case _PengkajianPerawat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PengkajianPerawat value)?  $default,){
final _that = this;
switch (_that) {
case _PengkajianPerawat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String oleh,  String caraDatang,  String rujukan,  Map<String, String> abcde,  List<String> abnormal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PengkajianPerawat() when $default != null:
return $default(_that.oleh,_that.caraDatang,_that.rujukan,_that.abcde,_that.abnormal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String oleh,  String caraDatang,  String rujukan,  Map<String, String> abcde,  List<String> abnormal)  $default,) {final _that = this;
switch (_that) {
case _PengkajianPerawat():
return $default(_that.oleh,_that.caraDatang,_that.rujukan,_that.abcde,_that.abnormal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String oleh,  String caraDatang,  String rujukan,  Map<String, String> abcde,  List<String> abnormal)?  $default,) {final _that = this;
switch (_that) {
case _PengkajianPerawat() when $default != null:
return $default(_that.oleh,_that.caraDatang,_that.rujukan,_that.abcde,_that.abnormal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PengkajianPerawat extends PengkajianPerawat {
  const _PengkajianPerawat({required this.oleh, required this.caraDatang, required this.rujukan, required final  Map<String, String> abcde, final  List<String> abnormal = const <String>[]}): _abcde = abcde,_abnormal = abnormal,super._();
  factory _PengkajianPerawat.fromJson(Map<String, dynamic> json) => _$PengkajianPerawatFromJson(json);

@override final  String oleh;
@override final  String caraDatang;
@override final  String rujukan;
/// Airway, Breathing, Circulation, Disability, Exposure → hasil.
 final  Map<String, String> _abcde;
/// Airway, Breathing, Circulation, Disability, Exposure → hasil.
@override Map<String, String> get abcde {
  if (_abcde is EqualUnmodifiableMapView) return _abcde;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_abcde);
}

 final  List<String> _abnormal;
@override@JsonKey() List<String> get abnormal {
  if (_abnormal is EqualUnmodifiableListView) return _abnormal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abnormal);
}


/// Create a copy of PengkajianPerawat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PengkajianPerawatCopyWith<_PengkajianPerawat> get copyWith => __$PengkajianPerawatCopyWithImpl<_PengkajianPerawat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PengkajianPerawatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PengkajianPerawat&&(identical(other.oleh, oleh) || other.oleh == oleh)&&(identical(other.caraDatang, caraDatang) || other.caraDatang == caraDatang)&&(identical(other.rujukan, rujukan) || other.rujukan == rujukan)&&const DeepCollectionEquality().equals(other._abcde, _abcde)&&const DeepCollectionEquality().equals(other._abnormal, _abnormal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oleh,caraDatang,rujukan,const DeepCollectionEquality().hash(_abcde),const DeepCollectionEquality().hash(_abnormal));

@override
String toString() {
  return 'PengkajianPerawat(oleh: $oleh, caraDatang: $caraDatang, rujukan: $rujukan, abcde: $abcde, abnormal: $abnormal)';
}


}

/// @nodoc
abstract mixin class _$PengkajianPerawatCopyWith<$Res> implements $PengkajianPerawatCopyWith<$Res> {
  factory _$PengkajianPerawatCopyWith(_PengkajianPerawat value, $Res Function(_PengkajianPerawat) _then) = __$PengkajianPerawatCopyWithImpl;
@override @useResult
$Res call({
 String oleh, String caraDatang, String rujukan, Map<String, String> abcde, List<String> abnormal
});




}
/// @nodoc
class __$PengkajianPerawatCopyWithImpl<$Res>
    implements _$PengkajianPerawatCopyWith<$Res> {
  __$PengkajianPerawatCopyWithImpl(this._self, this._then);

  final _PengkajianPerawat _self;
  final $Res Function(_PengkajianPerawat) _then;

/// Create a copy of PengkajianPerawat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oleh = null,Object? caraDatang = null,Object? rujukan = null,Object? abcde = null,Object? abnormal = null,}) {
  return _then(_PengkajianPerawat(
oleh: null == oleh ? _self.oleh : oleh // ignore: cast_nullable_to_non_nullable
as String,caraDatang: null == caraDatang ? _self.caraDatang : caraDatang // ignore: cast_nullable_to_non_nullable
as String,rujukan: null == rujukan ? _self.rujukan : rujukan // ignore: cast_nullable_to_non_nullable
as String,abcde: null == abcde ? _self._abcde : abcde // ignore: cast_nullable_to_non_nullable
as Map<String, String>,abnormal: null == abnormal ? _self._abnormal : abnormal // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$Riwayat {

 List<String> get penyakitDahulu; String? get catatan; List<ObatRutin> get obat; List<Alergi> get alergi;
/// Create a copy of Riwayat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiwayatCopyWith<Riwayat> get copyWith => _$RiwayatCopyWithImpl<Riwayat>(this as Riwayat, _$identity);

  /// Serializes this Riwayat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Riwayat&&const DeepCollectionEquality().equals(other.penyakitDahulu, penyakitDahulu)&&(identical(other.catatan, catatan) || other.catatan == catatan)&&const DeepCollectionEquality().equals(other.obat, obat)&&const DeepCollectionEquality().equals(other.alergi, alergi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(penyakitDahulu),catatan,const DeepCollectionEquality().hash(obat),const DeepCollectionEquality().hash(alergi));

@override
String toString() {
  return 'Riwayat(penyakitDahulu: $penyakitDahulu, catatan: $catatan, obat: $obat, alergi: $alergi)';
}


}

/// @nodoc
abstract mixin class $RiwayatCopyWith<$Res>  {
  factory $RiwayatCopyWith(Riwayat value, $Res Function(Riwayat) _then) = _$RiwayatCopyWithImpl;
@useResult
$Res call({
 List<String> penyakitDahulu, String? catatan, List<ObatRutin> obat, List<Alergi> alergi
});




}
/// @nodoc
class _$RiwayatCopyWithImpl<$Res>
    implements $RiwayatCopyWith<$Res> {
  _$RiwayatCopyWithImpl(this._self, this._then);

  final Riwayat _self;
  final $Res Function(Riwayat) _then;

/// Create a copy of Riwayat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? penyakitDahulu = null,Object? catatan = freezed,Object? obat = null,Object? alergi = null,}) {
  return _then(_self.copyWith(
penyakitDahulu: null == penyakitDahulu ? _self.penyakitDahulu : penyakitDahulu // ignore: cast_nullable_to_non_nullable
as List<String>,catatan: freezed == catatan ? _self.catatan : catatan // ignore: cast_nullable_to_non_nullable
as String?,obat: null == obat ? _self.obat : obat // ignore: cast_nullable_to_non_nullable
as List<ObatRutin>,alergi: null == alergi ? _self.alergi : alergi // ignore: cast_nullable_to_non_nullable
as List<Alergi>,
  ));
}

}


/// Adds pattern-matching-related methods to [Riwayat].
extension RiwayatPatterns on Riwayat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Riwayat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Riwayat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Riwayat value)  $default,){
final _that = this;
switch (_that) {
case _Riwayat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Riwayat value)?  $default,){
final _that = this;
switch (_that) {
case _Riwayat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> penyakitDahulu,  String? catatan,  List<ObatRutin> obat,  List<Alergi> alergi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Riwayat() when $default != null:
return $default(_that.penyakitDahulu,_that.catatan,_that.obat,_that.alergi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> penyakitDahulu,  String? catatan,  List<ObatRutin> obat,  List<Alergi> alergi)  $default,) {final _that = this;
switch (_that) {
case _Riwayat():
return $default(_that.penyakitDahulu,_that.catatan,_that.obat,_that.alergi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> penyakitDahulu,  String? catatan,  List<ObatRutin> obat,  List<Alergi> alergi)?  $default,) {final _that = this;
switch (_that) {
case _Riwayat() when $default != null:
return $default(_that.penyakitDahulu,_that.catatan,_that.obat,_that.alergi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Riwayat implements Riwayat {
  const _Riwayat({final  List<String> penyakitDahulu = const <String>[], this.catatan, final  List<ObatRutin> obat = const <ObatRutin>[], final  List<Alergi> alergi = const <Alergi>[]}): _penyakitDahulu = penyakitDahulu,_obat = obat,_alergi = alergi;
  factory _Riwayat.fromJson(Map<String, dynamic> json) => _$RiwayatFromJson(json);

 final  List<String> _penyakitDahulu;
@override@JsonKey() List<String> get penyakitDahulu {
  if (_penyakitDahulu is EqualUnmodifiableListView) return _penyakitDahulu;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_penyakitDahulu);
}

@override final  String? catatan;
 final  List<ObatRutin> _obat;
@override@JsonKey() List<ObatRutin> get obat {
  if (_obat is EqualUnmodifiableListView) return _obat;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_obat);
}

 final  List<Alergi> _alergi;
@override@JsonKey() List<Alergi> get alergi {
  if (_alergi is EqualUnmodifiableListView) return _alergi;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_alergi);
}


/// Create a copy of Riwayat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiwayatCopyWith<_Riwayat> get copyWith => __$RiwayatCopyWithImpl<_Riwayat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiwayatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Riwayat&&const DeepCollectionEquality().equals(other._penyakitDahulu, _penyakitDahulu)&&(identical(other.catatan, catatan) || other.catatan == catatan)&&const DeepCollectionEquality().equals(other._obat, _obat)&&const DeepCollectionEquality().equals(other._alergi, _alergi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_penyakitDahulu),catatan,const DeepCollectionEquality().hash(_obat),const DeepCollectionEquality().hash(_alergi));

@override
String toString() {
  return 'Riwayat(penyakitDahulu: $penyakitDahulu, catatan: $catatan, obat: $obat, alergi: $alergi)';
}


}

/// @nodoc
abstract mixin class _$RiwayatCopyWith<$Res> implements $RiwayatCopyWith<$Res> {
  factory _$RiwayatCopyWith(_Riwayat value, $Res Function(_Riwayat) _then) = __$RiwayatCopyWithImpl;
@override @useResult
$Res call({
 List<String> penyakitDahulu, String? catatan, List<ObatRutin> obat, List<Alergi> alergi
});




}
/// @nodoc
class __$RiwayatCopyWithImpl<$Res>
    implements _$RiwayatCopyWith<$Res> {
  __$RiwayatCopyWithImpl(this._self, this._then);

  final _Riwayat _self;
  final $Res Function(_Riwayat) _then;

/// Create a copy of Riwayat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? penyakitDahulu = null,Object? catatan = freezed,Object? obat = null,Object? alergi = null,}) {
  return _then(_Riwayat(
penyakitDahulu: null == penyakitDahulu ? _self._penyakitDahulu : penyakitDahulu // ignore: cast_nullable_to_non_nullable
as List<String>,catatan: freezed == catatan ? _self.catatan : catatan // ignore: cast_nullable_to_non_nullable
as String?,obat: null == obat ? _self._obat : obat // ignore: cast_nullable_to_non_nullable
as List<ObatRutin>,alergi: null == alergi ? _self._alergi : alergi // ignore: cast_nullable_to_non_nullable
as List<Alergi>,
  ));
}


}


/// @nodoc
mixin _$ObatRutin {

 String get nama; String get aturan; String? get terakhir;
/// Create a copy of ObatRutin
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ObatRutinCopyWith<ObatRutin> get copyWith => _$ObatRutinCopyWithImpl<ObatRutin>(this as ObatRutin, _$identity);

  /// Serializes this ObatRutin to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ObatRutin&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.aturan, aturan) || other.aturan == aturan)&&(identical(other.terakhir, terakhir) || other.terakhir == terakhir));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nama,aturan,terakhir);

@override
String toString() {
  return 'ObatRutin(nama: $nama, aturan: $aturan, terakhir: $terakhir)';
}


}

/// @nodoc
abstract mixin class $ObatRutinCopyWith<$Res>  {
  factory $ObatRutinCopyWith(ObatRutin value, $Res Function(ObatRutin) _then) = _$ObatRutinCopyWithImpl;
@useResult
$Res call({
 String nama, String aturan, String? terakhir
});




}
/// @nodoc
class _$ObatRutinCopyWithImpl<$Res>
    implements $ObatRutinCopyWith<$Res> {
  _$ObatRutinCopyWithImpl(this._self, this._then);

  final ObatRutin _self;
  final $Res Function(ObatRutin) _then;

/// Create a copy of ObatRutin
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nama = null,Object? aturan = null,Object? terakhir = freezed,}) {
  return _then(_self.copyWith(
nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,aturan: null == aturan ? _self.aturan : aturan // ignore: cast_nullable_to_non_nullable
as String,terakhir: freezed == terakhir ? _self.terakhir : terakhir // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ObatRutin].
extension ObatRutinPatterns on ObatRutin {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ObatRutin value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ObatRutin() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ObatRutin value)  $default,){
final _that = this;
switch (_that) {
case _ObatRutin():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ObatRutin value)?  $default,){
final _that = this;
switch (_that) {
case _ObatRutin() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nama,  String aturan,  String? terakhir)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ObatRutin() when $default != null:
return $default(_that.nama,_that.aturan,_that.terakhir);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nama,  String aturan,  String? terakhir)  $default,) {final _that = this;
switch (_that) {
case _ObatRutin():
return $default(_that.nama,_that.aturan,_that.terakhir);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nama,  String aturan,  String? terakhir)?  $default,) {final _that = this;
switch (_that) {
case _ObatRutin() when $default != null:
return $default(_that.nama,_that.aturan,_that.terakhir);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ObatRutin implements ObatRutin {
  const _ObatRutin({required this.nama, required this.aturan, this.terakhir});
  factory _ObatRutin.fromJson(Map<String, dynamic> json) => _$ObatRutinFromJson(json);

@override final  String nama;
@override final  String aturan;
@override final  String? terakhir;

/// Create a copy of ObatRutin
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ObatRutinCopyWith<_ObatRutin> get copyWith => __$ObatRutinCopyWithImpl<_ObatRutin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ObatRutinToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ObatRutin&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.aturan, aturan) || other.aturan == aturan)&&(identical(other.terakhir, terakhir) || other.terakhir == terakhir));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nama,aturan,terakhir);

@override
String toString() {
  return 'ObatRutin(nama: $nama, aturan: $aturan, terakhir: $terakhir)';
}


}

/// @nodoc
abstract mixin class _$ObatRutinCopyWith<$Res> implements $ObatRutinCopyWith<$Res> {
  factory _$ObatRutinCopyWith(_ObatRutin value, $Res Function(_ObatRutin) _then) = __$ObatRutinCopyWithImpl;
@override @useResult
$Res call({
 String nama, String aturan, String? terakhir
});




}
/// @nodoc
class __$ObatRutinCopyWithImpl<$Res>
    implements _$ObatRutinCopyWith<$Res> {
  __$ObatRutinCopyWithImpl(this._self, this._then);

  final _ObatRutin _self;
  final $Res Function(_ObatRutin) _then;

/// Create a copy of ObatRutin
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nama = null,Object? aturan = null,Object? terakhir = freezed,}) {
  return _then(_ObatRutin(
nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,aturan: null == aturan ? _self.aturan : aturan // ignore: cast_nullable_to_non_nullable
as String,terakhir: freezed == terakhir ? _self.terakhir : terakhir // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Alergi {

 String get jenis; String get nama; String? get reaksi; String? get keparahan; String? get dicatat;
/// Create a copy of Alergi
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlergiCopyWith<Alergi> get copyWith => _$AlergiCopyWithImpl<Alergi>(this as Alergi, _$identity);

  /// Serializes this Alergi to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Alergi&&(identical(other.jenis, jenis) || other.jenis == jenis)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.reaksi, reaksi) || other.reaksi == reaksi)&&(identical(other.keparahan, keparahan) || other.keparahan == keparahan)&&(identical(other.dicatat, dicatat) || other.dicatat == dicatat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jenis,nama,reaksi,keparahan,dicatat);

@override
String toString() {
  return 'Alergi(jenis: $jenis, nama: $nama, reaksi: $reaksi, keparahan: $keparahan, dicatat: $dicatat)';
}


}

/// @nodoc
abstract mixin class $AlergiCopyWith<$Res>  {
  factory $AlergiCopyWith(Alergi value, $Res Function(Alergi) _then) = _$AlergiCopyWithImpl;
@useResult
$Res call({
 String jenis, String nama, String? reaksi, String? keparahan, String? dicatat
});




}
/// @nodoc
class _$AlergiCopyWithImpl<$Res>
    implements $AlergiCopyWith<$Res> {
  _$AlergiCopyWithImpl(this._self, this._then);

  final Alergi _self;
  final $Res Function(Alergi) _then;

/// Create a copy of Alergi
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jenis = null,Object? nama = null,Object? reaksi = freezed,Object? keparahan = freezed,Object? dicatat = freezed,}) {
  return _then(_self.copyWith(
jenis: null == jenis ? _self.jenis : jenis // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,reaksi: freezed == reaksi ? _self.reaksi : reaksi // ignore: cast_nullable_to_non_nullable
as String?,keparahan: freezed == keparahan ? _self.keparahan : keparahan // ignore: cast_nullable_to_non_nullable
as String?,dicatat: freezed == dicatat ? _self.dicatat : dicatat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Alergi].
extension AlergiPatterns on Alergi {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Alergi value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Alergi() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Alergi value)  $default,){
final _that = this;
switch (_that) {
case _Alergi():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Alergi value)?  $default,){
final _that = this;
switch (_that) {
case _Alergi() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String jenis,  String nama,  String? reaksi,  String? keparahan,  String? dicatat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Alergi() when $default != null:
return $default(_that.jenis,_that.nama,_that.reaksi,_that.keparahan,_that.dicatat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String jenis,  String nama,  String? reaksi,  String? keparahan,  String? dicatat)  $default,) {final _that = this;
switch (_that) {
case _Alergi():
return $default(_that.jenis,_that.nama,_that.reaksi,_that.keparahan,_that.dicatat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String jenis,  String nama,  String? reaksi,  String? keparahan,  String? dicatat)?  $default,) {final _that = this;
switch (_that) {
case _Alergi() when $default != null:
return $default(_that.jenis,_that.nama,_that.reaksi,_that.keparahan,_that.dicatat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Alergi implements Alergi {
  const _Alergi({required this.jenis, required this.nama, this.reaksi, this.keparahan, this.dicatat});
  factory _Alergi.fromJson(Map<String, dynamic> json) => _$AlergiFromJson(json);

@override final  String jenis;
@override final  String nama;
@override final  String? reaksi;
@override final  String? keparahan;
@override final  String? dicatat;

/// Create a copy of Alergi
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlergiCopyWith<_Alergi> get copyWith => __$AlergiCopyWithImpl<_Alergi>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlergiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Alergi&&(identical(other.jenis, jenis) || other.jenis == jenis)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.reaksi, reaksi) || other.reaksi == reaksi)&&(identical(other.keparahan, keparahan) || other.keparahan == keparahan)&&(identical(other.dicatat, dicatat) || other.dicatat == dicatat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jenis,nama,reaksi,keparahan,dicatat);

@override
String toString() {
  return 'Alergi(jenis: $jenis, nama: $nama, reaksi: $reaksi, keparahan: $keparahan, dicatat: $dicatat)';
}


}

/// @nodoc
abstract mixin class _$AlergiCopyWith<$Res> implements $AlergiCopyWith<$Res> {
  factory _$AlergiCopyWith(_Alergi value, $Res Function(_Alergi) _then) = __$AlergiCopyWithImpl;
@override @useResult
$Res call({
 String jenis, String nama, String? reaksi, String? keparahan, String? dicatat
});




}
/// @nodoc
class __$AlergiCopyWithImpl<$Res>
    implements _$AlergiCopyWith<$Res> {
  __$AlergiCopyWithImpl(this._self, this._then);

  final _Alergi _self;
  final $Res Function(_Alergi) _then;

/// Create a copy of Alergi
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jenis = null,Object? nama = null,Object? reaksi = freezed,Object? keparahan = freezed,Object? dicatat = freezed,}) {
  return _then(_Alergi(
jenis: null == jenis ? _self.jenis : jenis // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,reaksi: freezed == reaksi ? _self.reaksi : reaksi // ignore: cast_nullable_to_non_nullable
as String?,keparahan: freezed == keparahan ? _self.keparahan : keparahan // ignore: cast_nullable_to_non_nullable
as String?,dicatat: freezed == dicatat ? _self.dicatat : dicatat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Pemeriksaan {

/// Label → nilai, urutan sesuai sumber.
 Map<String, String> get vital;/// Hanya sistem yang abnormal; sistem lain dianggap "Normal".
 List<TemuanFisik> get fisikAbnormal; Mst? get mst;
/// Create a copy of Pemeriksaan
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PemeriksaanCopyWith<Pemeriksaan> get copyWith => _$PemeriksaanCopyWithImpl<Pemeriksaan>(this as Pemeriksaan, _$identity);

  /// Serializes this Pemeriksaan to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pemeriksaan&&const DeepCollectionEquality().equals(other.vital, vital)&&const DeepCollectionEquality().equals(other.fisikAbnormal, fisikAbnormal)&&(identical(other.mst, mst) || other.mst == mst));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(vital),const DeepCollectionEquality().hash(fisikAbnormal),mst);

@override
String toString() {
  return 'Pemeriksaan(vital: $vital, fisikAbnormal: $fisikAbnormal, mst: $mst)';
}


}

/// @nodoc
abstract mixin class $PemeriksaanCopyWith<$Res>  {
  factory $PemeriksaanCopyWith(Pemeriksaan value, $Res Function(Pemeriksaan) _then) = _$PemeriksaanCopyWithImpl;
@useResult
$Res call({
 Map<String, String> vital, List<TemuanFisik> fisikAbnormal, Mst? mst
});


$MstCopyWith<$Res>? get mst;

}
/// @nodoc
class _$PemeriksaanCopyWithImpl<$Res>
    implements $PemeriksaanCopyWith<$Res> {
  _$PemeriksaanCopyWithImpl(this._self, this._then);

  final Pemeriksaan _self;
  final $Res Function(Pemeriksaan) _then;

/// Create a copy of Pemeriksaan
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vital = null,Object? fisikAbnormal = null,Object? mst = freezed,}) {
  return _then(_self.copyWith(
vital: null == vital ? _self.vital : vital // ignore: cast_nullable_to_non_nullable
as Map<String, String>,fisikAbnormal: null == fisikAbnormal ? _self.fisikAbnormal : fisikAbnormal // ignore: cast_nullable_to_non_nullable
as List<TemuanFisik>,mst: freezed == mst ? _self.mst : mst // ignore: cast_nullable_to_non_nullable
as Mst?,
  ));
}
/// Create a copy of Pemeriksaan
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MstCopyWith<$Res>? get mst {
    if (_self.mst == null) {
    return null;
  }

  return $MstCopyWith<$Res>(_self.mst!, (value) {
    return _then(_self.copyWith(mst: value));
  });
}
}


/// Adds pattern-matching-related methods to [Pemeriksaan].
extension PemeriksaanPatterns on Pemeriksaan {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pemeriksaan value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pemeriksaan() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pemeriksaan value)  $default,){
final _that = this;
switch (_that) {
case _Pemeriksaan():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pemeriksaan value)?  $default,){
final _that = this;
switch (_that) {
case _Pemeriksaan() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, String> vital,  List<TemuanFisik> fisikAbnormal,  Mst? mst)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pemeriksaan() when $default != null:
return $default(_that.vital,_that.fisikAbnormal,_that.mst);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, String> vital,  List<TemuanFisik> fisikAbnormal,  Mst? mst)  $default,) {final _that = this;
switch (_that) {
case _Pemeriksaan():
return $default(_that.vital,_that.fisikAbnormal,_that.mst);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, String> vital,  List<TemuanFisik> fisikAbnormal,  Mst? mst)?  $default,) {final _that = this;
switch (_that) {
case _Pemeriksaan() when $default != null:
return $default(_that.vital,_that.fisikAbnormal,_that.mst);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pemeriksaan implements Pemeriksaan {
  const _Pemeriksaan({required final  Map<String, String> vital, final  List<TemuanFisik> fisikAbnormal = const <TemuanFisik>[], this.mst}): _vital = vital,_fisikAbnormal = fisikAbnormal;
  factory _Pemeriksaan.fromJson(Map<String, dynamic> json) => _$PemeriksaanFromJson(json);

/// Label → nilai, urutan sesuai sumber.
 final  Map<String, String> _vital;
/// Label → nilai, urutan sesuai sumber.
@override Map<String, String> get vital {
  if (_vital is EqualUnmodifiableMapView) return _vital;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_vital);
}

/// Hanya sistem yang abnormal; sistem lain dianggap "Normal".
 final  List<TemuanFisik> _fisikAbnormal;
/// Hanya sistem yang abnormal; sistem lain dianggap "Normal".
@override@JsonKey() List<TemuanFisik> get fisikAbnormal {
  if (_fisikAbnormal is EqualUnmodifiableListView) return _fisikAbnormal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fisikAbnormal);
}

@override final  Mst? mst;

/// Create a copy of Pemeriksaan
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PemeriksaanCopyWith<_Pemeriksaan> get copyWith => __$PemeriksaanCopyWithImpl<_Pemeriksaan>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PemeriksaanToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pemeriksaan&&const DeepCollectionEquality().equals(other._vital, _vital)&&const DeepCollectionEquality().equals(other._fisikAbnormal, _fisikAbnormal)&&(identical(other.mst, mst) || other.mst == mst));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_vital),const DeepCollectionEquality().hash(_fisikAbnormal),mst);

@override
String toString() {
  return 'Pemeriksaan(vital: $vital, fisikAbnormal: $fisikAbnormal, mst: $mst)';
}


}

/// @nodoc
abstract mixin class _$PemeriksaanCopyWith<$Res> implements $PemeriksaanCopyWith<$Res> {
  factory _$PemeriksaanCopyWith(_Pemeriksaan value, $Res Function(_Pemeriksaan) _then) = __$PemeriksaanCopyWithImpl;
@override @useResult
$Res call({
 Map<String, String> vital, List<TemuanFisik> fisikAbnormal, Mst? mst
});


@override $MstCopyWith<$Res>? get mst;

}
/// @nodoc
class __$PemeriksaanCopyWithImpl<$Res>
    implements _$PemeriksaanCopyWith<$Res> {
  __$PemeriksaanCopyWithImpl(this._self, this._then);

  final _Pemeriksaan _self;
  final $Res Function(_Pemeriksaan) _then;

/// Create a copy of Pemeriksaan
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vital = null,Object? fisikAbnormal = null,Object? mst = freezed,}) {
  return _then(_Pemeriksaan(
vital: null == vital ? _self._vital : vital // ignore: cast_nullable_to_non_nullable
as Map<String, String>,fisikAbnormal: null == fisikAbnormal ? _self._fisikAbnormal : fisikAbnormal // ignore: cast_nullable_to_non_nullable
as List<TemuanFisik>,mst: freezed == mst ? _self.mst : mst // ignore: cast_nullable_to_non_nullable
as Mst?,
  ));
}

/// Create a copy of Pemeriksaan
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MstCopyWith<$Res>? get mst {
    if (_self.mst == null) {
    return null;
  }

  return $MstCopyWith<$Res>(_self.mst!, (value) {
    return _then(_self.copyWith(mst: value));
  });
}
}


/// @nodoc
mixin _$TemuanFisik {

 String get sistem; String get temuan;
/// Create a copy of TemuanFisik
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TemuanFisikCopyWith<TemuanFisik> get copyWith => _$TemuanFisikCopyWithImpl<TemuanFisik>(this as TemuanFisik, _$identity);

  /// Serializes this TemuanFisik to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TemuanFisik&&(identical(other.sistem, sistem) || other.sistem == sistem)&&(identical(other.temuan, temuan) || other.temuan == temuan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sistem,temuan);

@override
String toString() {
  return 'TemuanFisik(sistem: $sistem, temuan: $temuan)';
}


}

/// @nodoc
abstract mixin class $TemuanFisikCopyWith<$Res>  {
  factory $TemuanFisikCopyWith(TemuanFisik value, $Res Function(TemuanFisik) _then) = _$TemuanFisikCopyWithImpl;
@useResult
$Res call({
 String sistem, String temuan
});




}
/// @nodoc
class _$TemuanFisikCopyWithImpl<$Res>
    implements $TemuanFisikCopyWith<$Res> {
  _$TemuanFisikCopyWithImpl(this._self, this._then);

  final TemuanFisik _self;
  final $Res Function(TemuanFisik) _then;

/// Create a copy of TemuanFisik
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sistem = null,Object? temuan = null,}) {
  return _then(_self.copyWith(
sistem: null == sistem ? _self.sistem : sistem // ignore: cast_nullable_to_non_nullable
as String,temuan: null == temuan ? _self.temuan : temuan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TemuanFisik].
extension TemuanFisikPatterns on TemuanFisik {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TemuanFisik value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TemuanFisik() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TemuanFisik value)  $default,){
final _that = this;
switch (_that) {
case _TemuanFisik():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TemuanFisik value)?  $default,){
final _that = this;
switch (_that) {
case _TemuanFisik() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sistem,  String temuan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TemuanFisik() when $default != null:
return $default(_that.sistem,_that.temuan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sistem,  String temuan)  $default,) {final _that = this;
switch (_that) {
case _TemuanFisik():
return $default(_that.sistem,_that.temuan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sistem,  String temuan)?  $default,) {final _that = this;
switch (_that) {
case _TemuanFisik() when $default != null:
return $default(_that.sistem,_that.temuan);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TemuanFisik implements TemuanFisik {
  const _TemuanFisik({required this.sistem, required this.temuan});
  factory _TemuanFisik.fromJson(Map<String, dynamic> json) => _$TemuanFisikFromJson(json);

@override final  String sistem;
@override final  String temuan;

/// Create a copy of TemuanFisik
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TemuanFisikCopyWith<_TemuanFisik> get copyWith => __$TemuanFisikCopyWithImpl<_TemuanFisik>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TemuanFisikToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TemuanFisik&&(identical(other.sistem, sistem) || other.sistem == sistem)&&(identical(other.temuan, temuan) || other.temuan == temuan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sistem,temuan);

@override
String toString() {
  return 'TemuanFisik(sistem: $sistem, temuan: $temuan)';
}


}

/// @nodoc
abstract mixin class _$TemuanFisikCopyWith<$Res> implements $TemuanFisikCopyWith<$Res> {
  factory _$TemuanFisikCopyWith(_TemuanFisik value, $Res Function(_TemuanFisik) _then) = __$TemuanFisikCopyWithImpl;
@override @useResult
$Res call({
 String sistem, String temuan
});




}
/// @nodoc
class __$TemuanFisikCopyWithImpl<$Res>
    implements _$TemuanFisikCopyWith<$Res> {
  __$TemuanFisikCopyWithImpl(this._self, this._then);

  final _TemuanFisik _self;
  final $Res Function(_TemuanFisik) _then;

/// Create a copy of TemuanFisik
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sistem = null,Object? temuan = null,}) {
  return _then(_TemuanFisik(
sistem: null == sistem ? _self.sistem : sistem // ignore: cast_nullable_to_non_nullable
as String,temuan: null == temuan ? _self.temuan : temuan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Mst {

 int get skor; String get kesimpulan;
/// Create a copy of Mst
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MstCopyWith<Mst> get copyWith => _$MstCopyWithImpl<Mst>(this as Mst, _$identity);

  /// Serializes this Mst to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Mst&&(identical(other.skor, skor) || other.skor == skor)&&(identical(other.kesimpulan, kesimpulan) || other.kesimpulan == kesimpulan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skor,kesimpulan);

@override
String toString() {
  return 'Mst(skor: $skor, kesimpulan: $kesimpulan)';
}


}

/// @nodoc
abstract mixin class $MstCopyWith<$Res>  {
  factory $MstCopyWith(Mst value, $Res Function(Mst) _then) = _$MstCopyWithImpl;
@useResult
$Res call({
 int skor, String kesimpulan
});




}
/// @nodoc
class _$MstCopyWithImpl<$Res>
    implements $MstCopyWith<$Res> {
  _$MstCopyWithImpl(this._self, this._then);

  final Mst _self;
  final $Res Function(Mst) _then;

/// Create a copy of Mst
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? skor = null,Object? kesimpulan = null,}) {
  return _then(_self.copyWith(
skor: null == skor ? _self.skor : skor // ignore: cast_nullable_to_non_nullable
as int,kesimpulan: null == kesimpulan ? _self.kesimpulan : kesimpulan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Mst].
extension MstPatterns on Mst {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Mst value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Mst() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Mst value)  $default,){
final _that = this;
switch (_that) {
case _Mst():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Mst value)?  $default,){
final _that = this;
switch (_that) {
case _Mst() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int skor,  String kesimpulan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Mst() when $default != null:
return $default(_that.skor,_that.kesimpulan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int skor,  String kesimpulan)  $default,) {final _that = this;
switch (_that) {
case _Mst():
return $default(_that.skor,_that.kesimpulan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int skor,  String kesimpulan)?  $default,) {final _that = this;
switch (_that) {
case _Mst() when $default != null:
return $default(_that.skor,_that.kesimpulan);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Mst implements Mst {
  const _Mst({required this.skor, required this.kesimpulan});
  factory _Mst.fromJson(Map<String, dynamic> json) => _$MstFromJson(json);

@override final  int skor;
@override final  String kesimpulan;

/// Create a copy of Mst
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MstCopyWith<_Mst> get copyWith => __$MstCopyWithImpl<_Mst>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MstToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Mst&&(identical(other.skor, skor) || other.skor == skor)&&(identical(other.kesimpulan, kesimpulan) || other.kesimpulan == kesimpulan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skor,kesimpulan);

@override
String toString() {
  return 'Mst(skor: $skor, kesimpulan: $kesimpulan)';
}


}

/// @nodoc
abstract mixin class _$MstCopyWith<$Res> implements $MstCopyWith<$Res> {
  factory _$MstCopyWith(_Mst value, $Res Function(_Mst) _then) = __$MstCopyWithImpl;
@override @useResult
$Res call({
 int skor, String kesimpulan
});




}
/// @nodoc
class __$MstCopyWithImpl<$Res>
    implements _$MstCopyWith<$Res> {
  __$MstCopyWithImpl(this._self, this._then);

  final _Mst _self;
  final $Res Function(_Mst) _then;

/// Create a copy of Mst
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? skor = null,Object? kesimpulan = null,}) {
  return _then(_Mst(
skor: null == skor ? _self.skor : skor // ignore: cast_nullable_to_non_nullable
as int,kesimpulan: null == kesimpulan ? _self.kesimpulan : kesimpulan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Assessment {

/// ICD-10.
 List<Diagnosa> get diagnosa;/// ICD-9-CM.
 List<Prosedur> get prosedur;
/// Create a copy of Assessment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentCopyWith<Assessment> get copyWith => _$AssessmentCopyWithImpl<Assessment>(this as Assessment, _$identity);

  /// Serializes this Assessment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Assessment&&const DeepCollectionEquality().equals(other.diagnosa, diagnosa)&&const DeepCollectionEquality().equals(other.prosedur, prosedur));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(diagnosa),const DeepCollectionEquality().hash(prosedur));

@override
String toString() {
  return 'Assessment(diagnosa: $diagnosa, prosedur: $prosedur)';
}


}

/// @nodoc
abstract mixin class $AssessmentCopyWith<$Res>  {
  factory $AssessmentCopyWith(Assessment value, $Res Function(Assessment) _then) = _$AssessmentCopyWithImpl;
@useResult
$Res call({
 List<Diagnosa> diagnosa, List<Prosedur> prosedur
});




}
/// @nodoc
class _$AssessmentCopyWithImpl<$Res>
    implements $AssessmentCopyWith<$Res> {
  _$AssessmentCopyWithImpl(this._self, this._then);

  final Assessment _self;
  final $Res Function(Assessment) _then;

/// Create a copy of Assessment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? diagnosa = null,Object? prosedur = null,}) {
  return _then(_self.copyWith(
diagnosa: null == diagnosa ? _self.diagnosa : diagnosa // ignore: cast_nullable_to_non_nullable
as List<Diagnosa>,prosedur: null == prosedur ? _self.prosedur : prosedur // ignore: cast_nullable_to_non_nullable
as List<Prosedur>,
  ));
}

}


/// Adds pattern-matching-related methods to [Assessment].
extension AssessmentPatterns on Assessment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Assessment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Assessment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Assessment value)  $default,){
final _that = this;
switch (_that) {
case _Assessment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Assessment value)?  $default,){
final _that = this;
switch (_that) {
case _Assessment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Diagnosa> diagnosa,  List<Prosedur> prosedur)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Assessment() when $default != null:
return $default(_that.diagnosa,_that.prosedur);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Diagnosa> diagnosa,  List<Prosedur> prosedur)  $default,) {final _that = this;
switch (_that) {
case _Assessment():
return $default(_that.diagnosa,_that.prosedur);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Diagnosa> diagnosa,  List<Prosedur> prosedur)?  $default,) {final _that = this;
switch (_that) {
case _Assessment() when $default != null:
return $default(_that.diagnosa,_that.prosedur);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Assessment implements Assessment {
  const _Assessment({final  List<Diagnosa> diagnosa = const <Diagnosa>[], final  List<Prosedur> prosedur = const <Prosedur>[]}): _diagnosa = diagnosa,_prosedur = prosedur;
  factory _Assessment.fromJson(Map<String, dynamic> json) => _$AssessmentFromJson(json);

/// ICD-10.
 final  List<Diagnosa> _diagnosa;
/// ICD-10.
@override@JsonKey() List<Diagnosa> get diagnosa {
  if (_diagnosa is EqualUnmodifiableListView) return _diagnosa;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_diagnosa);
}

/// ICD-9-CM.
 final  List<Prosedur> _prosedur;
/// ICD-9-CM.
@override@JsonKey() List<Prosedur> get prosedur {
  if (_prosedur is EqualUnmodifiableListView) return _prosedur;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prosedur);
}


/// Create a copy of Assessment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentCopyWith<_Assessment> get copyWith => __$AssessmentCopyWithImpl<_Assessment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssessmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Assessment&&const DeepCollectionEquality().equals(other._diagnosa, _diagnosa)&&const DeepCollectionEquality().equals(other._prosedur, _prosedur));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_diagnosa),const DeepCollectionEquality().hash(_prosedur));

@override
String toString() {
  return 'Assessment(diagnosa: $diagnosa, prosedur: $prosedur)';
}


}

/// @nodoc
abstract mixin class _$AssessmentCopyWith<$Res> implements $AssessmentCopyWith<$Res> {
  factory _$AssessmentCopyWith(_Assessment value, $Res Function(_Assessment) _then) = __$AssessmentCopyWithImpl;
@override @useResult
$Res call({
 List<Diagnosa> diagnosa, List<Prosedur> prosedur
});




}
/// @nodoc
class __$AssessmentCopyWithImpl<$Res>
    implements _$AssessmentCopyWith<$Res> {
  __$AssessmentCopyWithImpl(this._self, this._then);

  final _Assessment _self;
  final $Res Function(_Assessment) _then;

/// Create a copy of Assessment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? diagnosa = null,Object? prosedur = null,}) {
  return _then(_Assessment(
diagnosa: null == diagnosa ? _self._diagnosa : diagnosa // ignore: cast_nullable_to_non_nullable
as List<Diagnosa>,prosedur: null == prosedur ? _self._prosedur : prosedur // ignore: cast_nullable_to_non_nullable
as List<Prosedur>,
  ));
}


}


/// @nodoc
mixin _$Diagnosa {

 String get kode; String get nama;/// Utama, Sekunder, Penyerta.
 String get tipe;
/// Create a copy of Diagnosa
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosaCopyWith<Diagnosa> get copyWith => _$DiagnosaCopyWithImpl<Diagnosa>(this as Diagnosa, _$identity);

  /// Serializes this Diagnosa to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Diagnosa&&(identical(other.kode, kode) || other.kode == kode)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.tipe, tipe) || other.tipe == tipe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kode,nama,tipe);

@override
String toString() {
  return 'Diagnosa(kode: $kode, nama: $nama, tipe: $tipe)';
}


}

/// @nodoc
abstract mixin class $DiagnosaCopyWith<$Res>  {
  factory $DiagnosaCopyWith(Diagnosa value, $Res Function(Diagnosa) _then) = _$DiagnosaCopyWithImpl;
@useResult
$Res call({
 String kode, String nama, String tipe
});




}
/// @nodoc
class _$DiagnosaCopyWithImpl<$Res>
    implements $DiagnosaCopyWith<$Res> {
  _$DiagnosaCopyWithImpl(this._self, this._then);

  final Diagnosa _self;
  final $Res Function(Diagnosa) _then;

/// Create a copy of Diagnosa
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kode = null,Object? nama = null,Object? tipe = null,}) {
  return _then(_self.copyWith(
kode: null == kode ? _self.kode : kode // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,tipe: null == tipe ? _self.tipe : tipe // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Diagnosa].
extension DiagnosaPatterns on Diagnosa {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Diagnosa value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Diagnosa() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Diagnosa value)  $default,){
final _that = this;
switch (_that) {
case _Diagnosa():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Diagnosa value)?  $default,){
final _that = this;
switch (_that) {
case _Diagnosa() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kode,  String nama,  String tipe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Diagnosa() when $default != null:
return $default(_that.kode,_that.nama,_that.tipe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kode,  String nama,  String tipe)  $default,) {final _that = this;
switch (_that) {
case _Diagnosa():
return $default(_that.kode,_that.nama,_that.tipe);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kode,  String nama,  String tipe)?  $default,) {final _that = this;
switch (_that) {
case _Diagnosa() when $default != null:
return $default(_that.kode,_that.nama,_that.tipe);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Diagnosa implements Diagnosa {
  const _Diagnosa({required this.kode, required this.nama, required this.tipe});
  factory _Diagnosa.fromJson(Map<String, dynamic> json) => _$DiagnosaFromJson(json);

@override final  String kode;
@override final  String nama;
/// Utama, Sekunder, Penyerta.
@override final  String tipe;

/// Create a copy of Diagnosa
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosaCopyWith<_Diagnosa> get copyWith => __$DiagnosaCopyWithImpl<_Diagnosa>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Diagnosa&&(identical(other.kode, kode) || other.kode == kode)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.tipe, tipe) || other.tipe == tipe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kode,nama,tipe);

@override
String toString() {
  return 'Diagnosa(kode: $kode, nama: $nama, tipe: $tipe)';
}


}

/// @nodoc
abstract mixin class _$DiagnosaCopyWith<$Res> implements $DiagnosaCopyWith<$Res> {
  factory _$DiagnosaCopyWith(_Diagnosa value, $Res Function(_Diagnosa) _then) = __$DiagnosaCopyWithImpl;
@override @useResult
$Res call({
 String kode, String nama, String tipe
});




}
/// @nodoc
class __$DiagnosaCopyWithImpl<$Res>
    implements _$DiagnosaCopyWith<$Res> {
  __$DiagnosaCopyWithImpl(this._self, this._then);

  final _Diagnosa _self;
  final $Res Function(_Diagnosa) _then;

/// Create a copy of Diagnosa
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kode = null,Object? nama = null,Object? tipe = null,}) {
  return _then(_Diagnosa(
kode: null == kode ? _self.kode : kode // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,tipe: null == tipe ? _self.tipe : tipe // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Prosedur {

 String get kode; String get nama;
/// Create a copy of Prosedur
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProsedurCopyWith<Prosedur> get copyWith => _$ProsedurCopyWithImpl<Prosedur>(this as Prosedur, _$identity);

  /// Serializes this Prosedur to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Prosedur&&(identical(other.kode, kode) || other.kode == kode)&&(identical(other.nama, nama) || other.nama == nama));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kode,nama);

@override
String toString() {
  return 'Prosedur(kode: $kode, nama: $nama)';
}


}

/// @nodoc
abstract mixin class $ProsedurCopyWith<$Res>  {
  factory $ProsedurCopyWith(Prosedur value, $Res Function(Prosedur) _then) = _$ProsedurCopyWithImpl;
@useResult
$Res call({
 String kode, String nama
});




}
/// @nodoc
class _$ProsedurCopyWithImpl<$Res>
    implements $ProsedurCopyWith<$Res> {
  _$ProsedurCopyWithImpl(this._self, this._then);

  final Prosedur _self;
  final $Res Function(Prosedur) _then;

/// Create a copy of Prosedur
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kode = null,Object? nama = null,}) {
  return _then(_self.copyWith(
kode: null == kode ? _self.kode : kode // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Prosedur].
extension ProsedurPatterns on Prosedur {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Prosedur value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Prosedur() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Prosedur value)  $default,){
final _that = this;
switch (_that) {
case _Prosedur():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Prosedur value)?  $default,){
final _that = this;
switch (_that) {
case _Prosedur() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String kode,  String nama)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Prosedur() when $default != null:
return $default(_that.kode,_that.nama);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String kode,  String nama)  $default,) {final _that = this;
switch (_that) {
case _Prosedur():
return $default(_that.kode,_that.nama);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String kode,  String nama)?  $default,) {final _that = this;
switch (_that) {
case _Prosedur() when $default != null:
return $default(_that.kode,_that.nama);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Prosedur implements Prosedur {
  const _Prosedur({required this.kode, required this.nama});
  factory _Prosedur.fromJson(Map<String, dynamic> json) => _$ProsedurFromJson(json);

@override final  String kode;
@override final  String nama;

/// Create a copy of Prosedur
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProsedurCopyWith<_Prosedur> get copyWith => __$ProsedurCopyWithImpl<_Prosedur>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProsedurToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Prosedur&&(identical(other.kode, kode) || other.kode == kode)&&(identical(other.nama, nama) || other.nama == nama));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kode,nama);

@override
String toString() {
  return 'Prosedur(kode: $kode, nama: $nama)';
}


}

/// @nodoc
abstract mixin class _$ProsedurCopyWith<$Res> implements $ProsedurCopyWith<$Res> {
  factory _$ProsedurCopyWith(_Prosedur value, $Res Function(_Prosedur) _then) = __$ProsedurCopyWithImpl;
@override @useResult
$Res call({
 String kode, String nama
});




}
/// @nodoc
class __$ProsedurCopyWithImpl<$Res>
    implements _$ProsedurCopyWith<$Res> {
  __$ProsedurCopyWithImpl(this._self, this._then);

  final _Prosedur _self;
  final $Res Function(_Prosedur) _then;

/// Create a copy of Prosedur
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kode = null,Object? nama = null,}) {
  return _then(_Prosedur(
kode: null == kode ? _self.kode : kode // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Planning {

 String get terapi; List<String> get instruksi; List<String> get resepOrder;
/// Create a copy of Planning
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanningCopyWith<Planning> get copyWith => _$PlanningCopyWithImpl<Planning>(this as Planning, _$identity);

  /// Serializes this Planning to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Planning&&(identical(other.terapi, terapi) || other.terapi == terapi)&&const DeepCollectionEquality().equals(other.instruksi, instruksi)&&const DeepCollectionEquality().equals(other.resepOrder, resepOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,terapi,const DeepCollectionEquality().hash(instruksi),const DeepCollectionEquality().hash(resepOrder));

@override
String toString() {
  return 'Planning(terapi: $terapi, instruksi: $instruksi, resepOrder: $resepOrder)';
}


}

/// @nodoc
abstract mixin class $PlanningCopyWith<$Res>  {
  factory $PlanningCopyWith(Planning value, $Res Function(Planning) _then) = _$PlanningCopyWithImpl;
@useResult
$Res call({
 String terapi, List<String> instruksi, List<String> resepOrder
});




}
/// @nodoc
class _$PlanningCopyWithImpl<$Res>
    implements $PlanningCopyWith<$Res> {
  _$PlanningCopyWithImpl(this._self, this._then);

  final Planning _self;
  final $Res Function(Planning) _then;

/// Create a copy of Planning
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? terapi = null,Object? instruksi = null,Object? resepOrder = null,}) {
  return _then(_self.copyWith(
terapi: null == terapi ? _self.terapi : terapi // ignore: cast_nullable_to_non_nullable
as String,instruksi: null == instruksi ? _self.instruksi : instruksi // ignore: cast_nullable_to_non_nullable
as List<String>,resepOrder: null == resepOrder ? _self.resepOrder : resepOrder // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [Planning].
extension PlanningPatterns on Planning {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Planning value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Planning() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Planning value)  $default,){
final _that = this;
switch (_that) {
case _Planning():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Planning value)?  $default,){
final _that = this;
switch (_that) {
case _Planning() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String terapi,  List<String> instruksi,  List<String> resepOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Planning() when $default != null:
return $default(_that.terapi,_that.instruksi,_that.resepOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String terapi,  List<String> instruksi,  List<String> resepOrder)  $default,) {final _that = this;
switch (_that) {
case _Planning():
return $default(_that.terapi,_that.instruksi,_that.resepOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String terapi,  List<String> instruksi,  List<String> resepOrder)?  $default,) {final _that = this;
switch (_that) {
case _Planning() when $default != null:
return $default(_that.terapi,_that.instruksi,_that.resepOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Planning implements Planning {
  const _Planning({required this.terapi, final  List<String> instruksi = const <String>[], final  List<String> resepOrder = const <String>[]}): _instruksi = instruksi,_resepOrder = resepOrder;
  factory _Planning.fromJson(Map<String, dynamic> json) => _$PlanningFromJson(json);

@override final  String terapi;
 final  List<String> _instruksi;
@override@JsonKey() List<String> get instruksi {
  if (_instruksi is EqualUnmodifiableListView) return _instruksi;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_instruksi);
}

 final  List<String> _resepOrder;
@override@JsonKey() List<String> get resepOrder {
  if (_resepOrder is EqualUnmodifiableListView) return _resepOrder;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_resepOrder);
}


/// Create a copy of Planning
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanningCopyWith<_Planning> get copyWith => __$PlanningCopyWithImpl<_Planning>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanningToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Planning&&(identical(other.terapi, terapi) || other.terapi == terapi)&&const DeepCollectionEquality().equals(other._instruksi, _instruksi)&&const DeepCollectionEquality().equals(other._resepOrder, _resepOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,terapi,const DeepCollectionEquality().hash(_instruksi),const DeepCollectionEquality().hash(_resepOrder));

@override
String toString() {
  return 'Planning(terapi: $terapi, instruksi: $instruksi, resepOrder: $resepOrder)';
}


}

/// @nodoc
abstract mixin class _$PlanningCopyWith<$Res> implements $PlanningCopyWith<$Res> {
  factory _$PlanningCopyWith(_Planning value, $Res Function(_Planning) _then) = __$PlanningCopyWithImpl;
@override @useResult
$Res call({
 String terapi, List<String> instruksi, List<String> resepOrder
});




}
/// @nodoc
class __$PlanningCopyWithImpl<$Res>
    implements _$PlanningCopyWith<$Res> {
  __$PlanningCopyWithImpl(this._self, this._then);

  final _Planning _self;
  final $Res Function(_Planning) _then;

/// Create a copy of Planning
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? terapi = null,Object? instruksi = null,Object? resepOrder = null,}) {
  return _then(_Planning(
terapi: null == terapi ? _self.terapi : terapi // ignore: cast_nullable_to_non_nullable
as String,instruksi: null == instruksi ? _self._instruksi : instruksi // ignore: cast_nullable_to_non_nullable
as List<String>,resepOrder: null == resepOrder ? _self._resepOrder : resepOrder // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
