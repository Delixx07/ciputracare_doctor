// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifikasi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Notifikasi {

/// Kunci stabil untuk status "sudah dibaca" lokal.
 String get id; NotifikasiJenis get jenis; String get judul; String get isi; String get jam;/// Status baca dari server. Status baca lokal disimpan terpisah di perangkat.
 bool get belumDibaca; NotifikasiTone get tone;/// Pasien terkait + tab tujuan (`kajian`, `catatan`, `lab`, `disposisi`).
 String? get noReg; String? get tab;
/// Create a copy of Notifikasi
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotifikasiCopyWith<Notifikasi> get copyWith => _$NotifikasiCopyWithImpl<Notifikasi>(this as Notifikasi, _$identity);

  /// Serializes this Notifikasi to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notifikasi&&(identical(other.id, id) || other.id == id)&&(identical(other.jenis, jenis) || other.jenis == jenis)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.isi, isi) || other.isi == isi)&&(identical(other.jam, jam) || other.jam == jam)&&(identical(other.belumDibaca, belumDibaca) || other.belumDibaca == belumDibaca)&&(identical(other.tone, tone) || other.tone == tone)&&(identical(other.noReg, noReg) || other.noReg == noReg)&&(identical(other.tab, tab) || other.tab == tab));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,jenis,judul,isi,jam,belumDibaca,tone,noReg,tab);

@override
String toString() {
  return 'Notifikasi(id: $id, jenis: $jenis, judul: $judul, isi: $isi, jam: $jam, belumDibaca: $belumDibaca, tone: $tone, noReg: $noReg, tab: $tab)';
}


}

/// @nodoc
abstract mixin class $NotifikasiCopyWith<$Res>  {
  factory $NotifikasiCopyWith(Notifikasi value, $Res Function(Notifikasi) _then) = _$NotifikasiCopyWithImpl;
@useResult
$Res call({
 String id, NotifikasiJenis jenis, String judul, String isi, String jam, bool belumDibaca, NotifikasiTone tone, String? noReg, String? tab
});




}
/// @nodoc
class _$NotifikasiCopyWithImpl<$Res>
    implements $NotifikasiCopyWith<$Res> {
  _$NotifikasiCopyWithImpl(this._self, this._then);

  final Notifikasi _self;
  final $Res Function(Notifikasi) _then;

/// Create a copy of Notifikasi
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? jenis = null,Object? judul = null,Object? isi = null,Object? jam = null,Object? belumDibaca = null,Object? tone = null,Object? noReg = freezed,Object? tab = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,jenis: null == jenis ? _self.jenis : jenis // ignore: cast_nullable_to_non_nullable
as NotifikasiJenis,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,isi: null == isi ? _self.isi : isi // ignore: cast_nullable_to_non_nullable
as String,jam: null == jam ? _self.jam : jam // ignore: cast_nullable_to_non_nullable
as String,belumDibaca: null == belumDibaca ? _self.belumDibaca : belumDibaca // ignore: cast_nullable_to_non_nullable
as bool,tone: null == tone ? _self.tone : tone // ignore: cast_nullable_to_non_nullable
as NotifikasiTone,noReg: freezed == noReg ? _self.noReg : noReg // ignore: cast_nullable_to_non_nullable
as String?,tab: freezed == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Notifikasi].
extension NotifikasiPatterns on Notifikasi {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Notifikasi value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Notifikasi() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Notifikasi value)  $default,){
final _that = this;
switch (_that) {
case _Notifikasi():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Notifikasi value)?  $default,){
final _that = this;
switch (_that) {
case _Notifikasi() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  NotifikasiJenis jenis,  String judul,  String isi,  String jam,  bool belumDibaca,  NotifikasiTone tone,  String? noReg,  String? tab)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Notifikasi() when $default != null:
return $default(_that.id,_that.jenis,_that.judul,_that.isi,_that.jam,_that.belumDibaca,_that.tone,_that.noReg,_that.tab);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  NotifikasiJenis jenis,  String judul,  String isi,  String jam,  bool belumDibaca,  NotifikasiTone tone,  String? noReg,  String? tab)  $default,) {final _that = this;
switch (_that) {
case _Notifikasi():
return $default(_that.id,_that.jenis,_that.judul,_that.isi,_that.jam,_that.belumDibaca,_that.tone,_that.noReg,_that.tab);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  NotifikasiJenis jenis,  String judul,  String isi,  String jam,  bool belumDibaca,  NotifikasiTone tone,  String? noReg,  String? tab)?  $default,) {final _that = this;
switch (_that) {
case _Notifikasi() when $default != null:
return $default(_that.id,_that.jenis,_that.judul,_that.isi,_that.jam,_that.belumDibaca,_that.tone,_that.noReg,_that.tab);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Notifikasi implements Notifikasi {
  const _Notifikasi({required this.id, required this.jenis, required this.judul, required this.isi, required this.jam, this.belumDibaca = false, this.tone = NotifikasiTone.neutral, this.noReg, this.tab});
  factory _Notifikasi.fromJson(Map<String, dynamic> json) => _$NotifikasiFromJson(json);

/// Kunci stabil untuk status "sudah dibaca" lokal.
@override final  String id;
@override final  NotifikasiJenis jenis;
@override final  String judul;
@override final  String isi;
@override final  String jam;
/// Status baca dari server. Status baca lokal disimpan terpisah di perangkat.
@override@JsonKey() final  bool belumDibaca;
@override@JsonKey() final  NotifikasiTone tone;
/// Pasien terkait + tab tujuan (`kajian`, `catatan`, `lab`, `disposisi`).
@override final  String? noReg;
@override final  String? tab;

/// Create a copy of Notifikasi
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotifikasiCopyWith<_Notifikasi> get copyWith => __$NotifikasiCopyWithImpl<_Notifikasi>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotifikasiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notifikasi&&(identical(other.id, id) || other.id == id)&&(identical(other.jenis, jenis) || other.jenis == jenis)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.isi, isi) || other.isi == isi)&&(identical(other.jam, jam) || other.jam == jam)&&(identical(other.belumDibaca, belumDibaca) || other.belumDibaca == belumDibaca)&&(identical(other.tone, tone) || other.tone == tone)&&(identical(other.noReg, noReg) || other.noReg == noReg)&&(identical(other.tab, tab) || other.tab == tab));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,jenis,judul,isi,jam,belumDibaca,tone,noReg,tab);

@override
String toString() {
  return 'Notifikasi(id: $id, jenis: $jenis, judul: $judul, isi: $isi, jam: $jam, belumDibaca: $belumDibaca, tone: $tone, noReg: $noReg, tab: $tab)';
}


}

/// @nodoc
abstract mixin class _$NotifikasiCopyWith<$Res> implements $NotifikasiCopyWith<$Res> {
  factory _$NotifikasiCopyWith(_Notifikasi value, $Res Function(_Notifikasi) _then) = __$NotifikasiCopyWithImpl;
@override @useResult
$Res call({
 String id, NotifikasiJenis jenis, String judul, String isi, String jam, bool belumDibaca, NotifikasiTone tone, String? noReg, String? tab
});




}
/// @nodoc
class __$NotifikasiCopyWithImpl<$Res>
    implements _$NotifikasiCopyWith<$Res> {
  __$NotifikasiCopyWithImpl(this._self, this._then);

  final _Notifikasi _self;
  final $Res Function(_Notifikasi) _then;

/// Create a copy of Notifikasi
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? jenis = null,Object? judul = null,Object? isi = null,Object? jam = null,Object? belumDibaca = null,Object? tone = null,Object? noReg = freezed,Object? tab = freezed,}) {
  return _then(_Notifikasi(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,jenis: null == jenis ? _self.jenis : jenis // ignore: cast_nullable_to_non_nullable
as NotifikasiJenis,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,isi: null == isi ? _self.isi : isi // ignore: cast_nullable_to_non_nullable
as String,jam: null == jam ? _self.jam : jam // ignore: cast_nullable_to_non_nullable
as String,belumDibaca: null == belumDibaca ? _self.belumDibaca : belumDibaca // ignore: cast_nullable_to_non_nullable
as bool,tone: null == tone ? _self.tone : tone // ignore: cast_nullable_to_non_nullable
as NotifikasiTone,noReg: freezed == noReg ? _self.noReg : noReg // ignore: cast_nullable_to_non_nullable
as String?,tab: freezed == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
