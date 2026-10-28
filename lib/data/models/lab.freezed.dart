// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabPasien {

 NilaiKritis? get nilaiKritis; List<OrderLab> get order; List<HasilLab> get hasil; TrenLab? get tren; List<Penunjang> get radiologi; List<Penunjang> get lainnya;
/// Create a copy of LabPasien
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabPasienCopyWith<LabPasien> get copyWith => _$LabPasienCopyWithImpl<LabPasien>(this as LabPasien, _$identity);

  /// Serializes this LabPasien to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabPasien&&(identical(other.nilaiKritis, nilaiKritis) || other.nilaiKritis == nilaiKritis)&&const DeepCollectionEquality().equals(other.order, order)&&const DeepCollectionEquality().equals(other.hasil, hasil)&&(identical(other.tren, tren) || other.tren == tren)&&const DeepCollectionEquality().equals(other.radiologi, radiologi)&&const DeepCollectionEquality().equals(other.lainnya, lainnya));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nilaiKritis,const DeepCollectionEquality().hash(order),const DeepCollectionEquality().hash(hasil),tren,const DeepCollectionEquality().hash(radiologi),const DeepCollectionEquality().hash(lainnya));

@override
String toString() {
  return 'LabPasien(nilaiKritis: $nilaiKritis, order: $order, hasil: $hasil, tren: $tren, radiologi: $radiologi, lainnya: $lainnya)';
}


}

/// @nodoc
abstract mixin class $LabPasienCopyWith<$Res>  {
  factory $LabPasienCopyWith(LabPasien value, $Res Function(LabPasien) _then) = _$LabPasienCopyWithImpl;
@useResult
$Res call({
 NilaiKritis? nilaiKritis, List<OrderLab> order, List<HasilLab> hasil, TrenLab? tren, List<Penunjang> radiologi, List<Penunjang> lainnya
});


$NilaiKritisCopyWith<$Res>? get nilaiKritis;$TrenLabCopyWith<$Res>? get tren;

}
/// @nodoc
class _$LabPasienCopyWithImpl<$Res>
    implements $LabPasienCopyWith<$Res> {
  _$LabPasienCopyWithImpl(this._self, this._then);

  final LabPasien _self;
  final $Res Function(LabPasien) _then;

/// Create a copy of LabPasien
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nilaiKritis = freezed,Object? order = null,Object? hasil = null,Object? tren = freezed,Object? radiologi = null,Object? lainnya = null,}) {
  return _then(_self.copyWith(
nilaiKritis: freezed == nilaiKritis ? _self.nilaiKritis : nilaiKritis // ignore: cast_nullable_to_non_nullable
as NilaiKritis?,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as List<OrderLab>,hasil: null == hasil ? _self.hasil : hasil // ignore: cast_nullable_to_non_nullable
as List<HasilLab>,tren: freezed == tren ? _self.tren : tren // ignore: cast_nullable_to_non_nullable
as TrenLab?,radiologi: null == radiologi ? _self.radiologi : radiologi // ignore: cast_nullable_to_non_nullable
as List<Penunjang>,lainnya: null == lainnya ? _self.lainnya : lainnya // ignore: cast_nullable_to_non_nullable
as List<Penunjang>,
  ));
}
/// Create a copy of LabPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NilaiKritisCopyWith<$Res>? get nilaiKritis {
    if (_self.nilaiKritis == null) {
    return null;
  }

  return $NilaiKritisCopyWith<$Res>(_self.nilaiKritis!, (value) {
    return _then(_self.copyWith(nilaiKritis: value));
  });
}/// Create a copy of LabPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrenLabCopyWith<$Res>? get tren {
    if (_self.tren == null) {
    return null;
  }

  return $TrenLabCopyWith<$Res>(_self.tren!, (value) {
    return _then(_self.copyWith(tren: value));
  });
}
}


/// Adds pattern-matching-related methods to [LabPasien].
extension LabPasienPatterns on LabPasien {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LabPasien value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LabPasien() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LabPasien value)  $default,){
final _that = this;
switch (_that) {
case _LabPasien():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LabPasien value)?  $default,){
final _that = this;
switch (_that) {
case _LabPasien() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NilaiKritis? nilaiKritis,  List<OrderLab> order,  List<HasilLab> hasil,  TrenLab? tren,  List<Penunjang> radiologi,  List<Penunjang> lainnya)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LabPasien() when $default != null:
return $default(_that.nilaiKritis,_that.order,_that.hasil,_that.tren,_that.radiologi,_that.lainnya);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NilaiKritis? nilaiKritis,  List<OrderLab> order,  List<HasilLab> hasil,  TrenLab? tren,  List<Penunjang> radiologi,  List<Penunjang> lainnya)  $default,) {final _that = this;
switch (_that) {
case _LabPasien():
return $default(_that.nilaiKritis,_that.order,_that.hasil,_that.tren,_that.radiologi,_that.lainnya);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NilaiKritis? nilaiKritis,  List<OrderLab> order,  List<HasilLab> hasil,  TrenLab? tren,  List<Penunjang> radiologi,  List<Penunjang> lainnya)?  $default,) {final _that = this;
switch (_that) {
case _LabPasien() when $default != null:
return $default(_that.nilaiKritis,_that.order,_that.hasil,_that.tren,_that.radiologi,_that.lainnya);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LabPasien implements LabPasien {
  const _LabPasien({this.nilaiKritis, final  List<OrderLab> order = const <OrderLab>[], final  List<HasilLab> hasil = const <HasilLab>[], this.tren, final  List<Penunjang> radiologi = const <Penunjang>[], final  List<Penunjang> lainnya = const <Penunjang>[]}): _order = order,_hasil = hasil,_radiologi = radiologi,_lainnya = lainnya;
  factory _LabPasien.fromJson(Map<String, dynamic> json) => _$LabPasienFromJson(json);

@override final  NilaiKritis? nilaiKritis;
 final  List<OrderLab> _order;
@override@JsonKey() List<OrderLab> get order {
  if (_order is EqualUnmodifiableListView) return _order;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_order);
}

 final  List<HasilLab> _hasil;
@override@JsonKey() List<HasilLab> get hasil {
  if (_hasil is EqualUnmodifiableListView) return _hasil;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hasil);
}

@override final  TrenLab? tren;
 final  List<Penunjang> _radiologi;
@override@JsonKey() List<Penunjang> get radiologi {
  if (_radiologi is EqualUnmodifiableListView) return _radiologi;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_radiologi);
}

 final  List<Penunjang> _lainnya;
@override@JsonKey() List<Penunjang> get lainnya {
  if (_lainnya is EqualUnmodifiableListView) return _lainnya;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lainnya);
}


/// Create a copy of LabPasien
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LabPasienCopyWith<_LabPasien> get copyWith => __$LabPasienCopyWithImpl<_LabPasien>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LabPasienToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LabPasien&&(identical(other.nilaiKritis, nilaiKritis) || other.nilaiKritis == nilaiKritis)&&const DeepCollectionEquality().equals(other._order, _order)&&const DeepCollectionEquality().equals(other._hasil, _hasil)&&(identical(other.tren, tren) || other.tren == tren)&&const DeepCollectionEquality().equals(other._radiologi, _radiologi)&&const DeepCollectionEquality().equals(other._lainnya, _lainnya));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nilaiKritis,const DeepCollectionEquality().hash(_order),const DeepCollectionEquality().hash(_hasil),tren,const DeepCollectionEquality().hash(_radiologi),const DeepCollectionEquality().hash(_lainnya));

@override
String toString() {
  return 'LabPasien(nilaiKritis: $nilaiKritis, order: $order, hasil: $hasil, tren: $tren, radiologi: $radiologi, lainnya: $lainnya)';
}


}

/// @nodoc
abstract mixin class _$LabPasienCopyWith<$Res> implements $LabPasienCopyWith<$Res> {
  factory _$LabPasienCopyWith(_LabPasien value, $Res Function(_LabPasien) _then) = __$LabPasienCopyWithImpl;
@override @useResult
$Res call({
 NilaiKritis? nilaiKritis, List<OrderLab> order, List<HasilLab> hasil, TrenLab? tren, List<Penunjang> radiologi, List<Penunjang> lainnya
});


@override $NilaiKritisCopyWith<$Res>? get nilaiKritis;@override $TrenLabCopyWith<$Res>? get tren;

}
/// @nodoc
class __$LabPasienCopyWithImpl<$Res>
    implements _$LabPasienCopyWith<$Res> {
  __$LabPasienCopyWithImpl(this._self, this._then);

  final _LabPasien _self;
  final $Res Function(_LabPasien) _then;

/// Create a copy of LabPasien
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nilaiKritis = freezed,Object? order = null,Object? hasil = null,Object? tren = freezed,Object? radiologi = null,Object? lainnya = null,}) {
  return _then(_LabPasien(
nilaiKritis: freezed == nilaiKritis ? _self.nilaiKritis : nilaiKritis // ignore: cast_nullable_to_non_nullable
as NilaiKritis?,order: null == order ? _self._order : order // ignore: cast_nullable_to_non_nullable
as List<OrderLab>,hasil: null == hasil ? _self._hasil : hasil // ignore: cast_nullable_to_non_nullable
as List<HasilLab>,tren: freezed == tren ? _self.tren : tren // ignore: cast_nullable_to_non_nullable
as TrenLab?,radiologi: null == radiologi ? _self._radiologi : radiologi // ignore: cast_nullable_to_non_nullable
as List<Penunjang>,lainnya: null == lainnya ? _self._lainnya : lainnya // ignore: cast_nullable_to_non_nullable
as List<Penunjang>,
  ));
}

/// Create a copy of LabPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NilaiKritisCopyWith<$Res>? get nilaiKritis {
    if (_self.nilaiKritis == null) {
    return null;
  }

  return $NilaiKritisCopyWith<$Res>(_self.nilaiKritis!, (value) {
    return _then(_self.copyWith(nilaiKritis: value));
  });
}/// Create a copy of LabPasien
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrenLabCopyWith<$Res>? get tren {
    if (_self.tren == null) {
    return null;
  }

  return $TrenLabCopyWith<$Res>(_self.tren!, (value) {
    return _then(_self.copyWith(tren: value));
  });
}
}


/// @nodoc
mixin _$NilaiKritis {

 String get item; String get nilai; String get dilaporkan; String get statusKonfirmasi;
/// Create a copy of NilaiKritis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NilaiKritisCopyWith<NilaiKritis> get copyWith => _$NilaiKritisCopyWithImpl<NilaiKritis>(this as NilaiKritis, _$identity);

  /// Serializes this NilaiKritis to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NilaiKritis&&(identical(other.item, item) || other.item == item)&&(identical(other.nilai, nilai) || other.nilai == nilai)&&(identical(other.dilaporkan, dilaporkan) || other.dilaporkan == dilaporkan)&&(identical(other.statusKonfirmasi, statusKonfirmasi) || other.statusKonfirmasi == statusKonfirmasi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,nilai,dilaporkan,statusKonfirmasi);

@override
String toString() {
  return 'NilaiKritis(item: $item, nilai: $nilai, dilaporkan: $dilaporkan, statusKonfirmasi: $statusKonfirmasi)';
}


}

/// @nodoc
abstract mixin class $NilaiKritisCopyWith<$Res>  {
  factory $NilaiKritisCopyWith(NilaiKritis value, $Res Function(NilaiKritis) _then) = _$NilaiKritisCopyWithImpl;
@useResult
$Res call({
 String item, String nilai, String dilaporkan, String statusKonfirmasi
});




}
/// @nodoc
class _$NilaiKritisCopyWithImpl<$Res>
    implements $NilaiKritisCopyWith<$Res> {
  _$NilaiKritisCopyWithImpl(this._self, this._then);

  final NilaiKritis _self;
  final $Res Function(NilaiKritis) _then;

/// Create a copy of NilaiKritis
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,Object? nilai = null,Object? dilaporkan = null,Object? statusKonfirmasi = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as String,nilai: null == nilai ? _self.nilai : nilai // ignore: cast_nullable_to_non_nullable
as String,dilaporkan: null == dilaporkan ? _self.dilaporkan : dilaporkan // ignore: cast_nullable_to_non_nullable
as String,statusKonfirmasi: null == statusKonfirmasi ? _self.statusKonfirmasi : statusKonfirmasi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NilaiKritis].
extension NilaiKritisPatterns on NilaiKritis {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NilaiKritis value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NilaiKritis() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NilaiKritis value)  $default,){
final _that = this;
switch (_that) {
case _NilaiKritis():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NilaiKritis value)?  $default,){
final _that = this;
switch (_that) {
case _NilaiKritis() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String item,  String nilai,  String dilaporkan,  String statusKonfirmasi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NilaiKritis() when $default != null:
return $default(_that.item,_that.nilai,_that.dilaporkan,_that.statusKonfirmasi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String item,  String nilai,  String dilaporkan,  String statusKonfirmasi)  $default,) {final _that = this;
switch (_that) {
case _NilaiKritis():
return $default(_that.item,_that.nilai,_that.dilaporkan,_that.statusKonfirmasi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String item,  String nilai,  String dilaporkan,  String statusKonfirmasi)?  $default,) {final _that = this;
switch (_that) {
case _NilaiKritis() when $default != null:
return $default(_that.item,_that.nilai,_that.dilaporkan,_that.statusKonfirmasi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NilaiKritis implements NilaiKritis {
  const _NilaiKritis({required this.item, required this.nilai, required this.dilaporkan, required this.statusKonfirmasi});
  factory _NilaiKritis.fromJson(Map<String, dynamic> json) => _$NilaiKritisFromJson(json);

@override final  String item;
@override final  String nilai;
@override final  String dilaporkan;
@override final  String statusKonfirmasi;

/// Create a copy of NilaiKritis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NilaiKritisCopyWith<_NilaiKritis> get copyWith => __$NilaiKritisCopyWithImpl<_NilaiKritis>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NilaiKritisToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NilaiKritis&&(identical(other.item, item) || other.item == item)&&(identical(other.nilai, nilai) || other.nilai == nilai)&&(identical(other.dilaporkan, dilaporkan) || other.dilaporkan == dilaporkan)&&(identical(other.statusKonfirmasi, statusKonfirmasi) || other.statusKonfirmasi == statusKonfirmasi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,nilai,dilaporkan,statusKonfirmasi);

@override
String toString() {
  return 'NilaiKritis(item: $item, nilai: $nilai, dilaporkan: $dilaporkan, statusKonfirmasi: $statusKonfirmasi)';
}


}

/// @nodoc
abstract mixin class _$NilaiKritisCopyWith<$Res> implements $NilaiKritisCopyWith<$Res> {
  factory _$NilaiKritisCopyWith(_NilaiKritis value, $Res Function(_NilaiKritis) _then) = __$NilaiKritisCopyWithImpl;
@override @useResult
$Res call({
 String item, String nilai, String dilaporkan, String statusKonfirmasi
});




}
/// @nodoc
class __$NilaiKritisCopyWithImpl<$Res>
    implements _$NilaiKritisCopyWith<$Res> {
  __$NilaiKritisCopyWithImpl(this._self, this._then);

  final _NilaiKritis _self;
  final $Res Function(_NilaiKritis) _then;

/// Create a copy of NilaiKritis
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,Object? nilai = null,Object? dilaporkan = null,Object? statusKonfirmasi = null,}) {
  return _then(_NilaiKritis(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as String,nilai: null == nilai ? _self.nilai : nilai // ignore: cast_nullable_to_non_nullable
as String,dilaporkan: null == dilaporkan ? _self.dilaporkan : dilaporkan // ignore: cast_nullable_to_non_nullable
as String,statusKonfirmasi: null == statusKonfirmasi ? _self.statusKonfirmasi : statusKonfirmasi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OrderLab {

 String get noTrx; String get judul; bool get cito;/// Tahap terakhir yang sudah dilalui, 1–4.
 int get tahap;/// Jam tiap tahap (4 elemen), `null` bila belum.
 List<String?> get waktu; String get status;/// Nama item di [LabPasien.hasil] yang termasuk order ini.
 List<String> get item; String? get pengirim; String? get pemeriksa; String? get sampel;
/// Create a copy of OrderLab
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderLabCopyWith<OrderLab> get copyWith => _$OrderLabCopyWithImpl<OrderLab>(this as OrderLab, _$identity);

  /// Serializes this OrderLab to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderLab&&(identical(other.noTrx, noTrx) || other.noTrx == noTrx)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.cito, cito) || other.cito == cito)&&(identical(other.tahap, tahap) || other.tahap == tahap)&&const DeepCollectionEquality().equals(other.waktu, waktu)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.item, item)&&(identical(other.pengirim, pengirim) || other.pengirim == pengirim)&&(identical(other.pemeriksa, pemeriksa) || other.pemeriksa == pemeriksa)&&(identical(other.sampel, sampel) || other.sampel == sampel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noTrx,judul,cito,tahap,const DeepCollectionEquality().hash(waktu),status,const DeepCollectionEquality().hash(item),pengirim,pemeriksa,sampel);

@override
String toString() {
  return 'OrderLab(noTrx: $noTrx, judul: $judul, cito: $cito, tahap: $tahap, waktu: $waktu, status: $status, item: $item, pengirim: $pengirim, pemeriksa: $pemeriksa, sampel: $sampel)';
}


}

/// @nodoc
abstract mixin class $OrderLabCopyWith<$Res>  {
  factory $OrderLabCopyWith(OrderLab value, $Res Function(OrderLab) _then) = _$OrderLabCopyWithImpl;
@useResult
$Res call({
 String noTrx, String judul, bool cito, int tahap, List<String?> waktu, String status, List<String> item, String? pengirim, String? pemeriksa, String? sampel
});




}
/// @nodoc
class _$OrderLabCopyWithImpl<$Res>
    implements $OrderLabCopyWith<$Res> {
  _$OrderLabCopyWithImpl(this._self, this._then);

  final OrderLab _self;
  final $Res Function(OrderLab) _then;

/// Create a copy of OrderLab
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? noTrx = null,Object? judul = null,Object? cito = null,Object? tahap = null,Object? waktu = null,Object? status = null,Object? item = null,Object? pengirim = freezed,Object? pemeriksa = freezed,Object? sampel = freezed,}) {
  return _then(_self.copyWith(
noTrx: null == noTrx ? _self.noTrx : noTrx // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,cito: null == cito ? _self.cito : cito // ignore: cast_nullable_to_non_nullable
as bool,tahap: null == tahap ? _self.tahap : tahap // ignore: cast_nullable_to_non_nullable
as int,waktu: null == waktu ? _self.waktu : waktu // ignore: cast_nullable_to_non_nullable
as List<String?>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as List<String>,pengirim: freezed == pengirim ? _self.pengirim : pengirim // ignore: cast_nullable_to_non_nullable
as String?,pemeriksa: freezed == pemeriksa ? _self.pemeriksa : pemeriksa // ignore: cast_nullable_to_non_nullable
as String?,sampel: freezed == sampel ? _self.sampel : sampel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderLab].
extension OrderLabPatterns on OrderLab {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderLab value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderLab() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderLab value)  $default,){
final _that = this;
switch (_that) {
case _OrderLab():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderLab value)?  $default,){
final _that = this;
switch (_that) {
case _OrderLab() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String noTrx,  String judul,  bool cito,  int tahap,  List<String?> waktu,  String status,  List<String> item,  String? pengirim,  String? pemeriksa,  String? sampel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderLab() when $default != null:
return $default(_that.noTrx,_that.judul,_that.cito,_that.tahap,_that.waktu,_that.status,_that.item,_that.pengirim,_that.pemeriksa,_that.sampel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String noTrx,  String judul,  bool cito,  int tahap,  List<String?> waktu,  String status,  List<String> item,  String? pengirim,  String? pemeriksa,  String? sampel)  $default,) {final _that = this;
switch (_that) {
case _OrderLab():
return $default(_that.noTrx,_that.judul,_that.cito,_that.tahap,_that.waktu,_that.status,_that.item,_that.pengirim,_that.pemeriksa,_that.sampel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String noTrx,  String judul,  bool cito,  int tahap,  List<String?> waktu,  String status,  List<String> item,  String? pengirim,  String? pemeriksa,  String? sampel)?  $default,) {final _that = this;
switch (_that) {
case _OrderLab() when $default != null:
return $default(_that.noTrx,_that.judul,_that.cito,_that.tahap,_that.waktu,_that.status,_that.item,_that.pengirim,_that.pemeriksa,_that.sampel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderLab extends OrderLab {
  const _OrderLab({required this.noTrx, required this.judul, this.cito = false, required this.tahap, required final  List<String?> waktu, required this.status, final  List<String> item = const <String>[], this.pengirim, this.pemeriksa, this.sampel}): _waktu = waktu,_item = item,super._();
  factory _OrderLab.fromJson(Map<String, dynamic> json) => _$OrderLabFromJson(json);

@override final  String noTrx;
@override final  String judul;
@override@JsonKey() final  bool cito;
/// Tahap terakhir yang sudah dilalui, 1–4.
@override final  int tahap;
/// Jam tiap tahap (4 elemen), `null` bila belum.
 final  List<String?> _waktu;
/// Jam tiap tahap (4 elemen), `null` bila belum.
@override List<String?> get waktu {
  if (_waktu is EqualUnmodifiableListView) return _waktu;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_waktu);
}

@override final  String status;
/// Nama item di [LabPasien.hasil] yang termasuk order ini.
 final  List<String> _item;
/// Nama item di [LabPasien.hasil] yang termasuk order ini.
@override@JsonKey() List<String> get item {
  if (_item is EqualUnmodifiableListView) return _item;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_item);
}

@override final  String? pengirim;
@override final  String? pemeriksa;
@override final  String? sampel;

/// Create a copy of OrderLab
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderLabCopyWith<_OrderLab> get copyWith => __$OrderLabCopyWithImpl<_OrderLab>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderLabToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderLab&&(identical(other.noTrx, noTrx) || other.noTrx == noTrx)&&(identical(other.judul, judul) || other.judul == judul)&&(identical(other.cito, cito) || other.cito == cito)&&(identical(other.tahap, tahap) || other.tahap == tahap)&&const DeepCollectionEquality().equals(other._waktu, _waktu)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._item, _item)&&(identical(other.pengirim, pengirim) || other.pengirim == pengirim)&&(identical(other.pemeriksa, pemeriksa) || other.pemeriksa == pemeriksa)&&(identical(other.sampel, sampel) || other.sampel == sampel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noTrx,judul,cito,tahap,const DeepCollectionEquality().hash(_waktu),status,const DeepCollectionEquality().hash(_item),pengirim,pemeriksa,sampel);

@override
String toString() {
  return 'OrderLab(noTrx: $noTrx, judul: $judul, cito: $cito, tahap: $tahap, waktu: $waktu, status: $status, item: $item, pengirim: $pengirim, pemeriksa: $pemeriksa, sampel: $sampel)';
}


}

/// @nodoc
abstract mixin class _$OrderLabCopyWith<$Res> implements $OrderLabCopyWith<$Res> {
  factory _$OrderLabCopyWith(_OrderLab value, $Res Function(_OrderLab) _then) = __$OrderLabCopyWithImpl;
@override @useResult
$Res call({
 String noTrx, String judul, bool cito, int tahap, List<String?> waktu, String status, List<String> item, String? pengirim, String? pemeriksa, String? sampel
});




}
/// @nodoc
class __$OrderLabCopyWithImpl<$Res>
    implements _$OrderLabCopyWith<$Res> {
  __$OrderLabCopyWithImpl(this._self, this._then);

  final _OrderLab _self;
  final $Res Function(_OrderLab) _then;

/// Create a copy of OrderLab
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noTrx = null,Object? judul = null,Object? cito = null,Object? tahap = null,Object? waktu = null,Object? status = null,Object? item = null,Object? pengirim = freezed,Object? pemeriksa = freezed,Object? sampel = freezed,}) {
  return _then(_OrderLab(
noTrx: null == noTrx ? _self.noTrx : noTrx // ignore: cast_nullable_to_non_nullable
as String,judul: null == judul ? _self.judul : judul // ignore: cast_nullable_to_non_nullable
as String,cito: null == cito ? _self.cito : cito // ignore: cast_nullable_to_non_nullable
as bool,tahap: null == tahap ? _self.tahap : tahap // ignore: cast_nullable_to_non_nullable
as int,waktu: null == waktu ? _self._waktu : waktu // ignore: cast_nullable_to_non_nullable
as List<String?>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,item: null == item ? _self._item : item // ignore: cast_nullable_to_non_nullable
as List<String>,pengirim: freezed == pengirim ? _self.pengirim : pengirim // ignore: cast_nullable_to_non_nullable
as String?,pemeriksa: freezed == pemeriksa ? _self.pemeriksa : pemeriksa // ignore: cast_nullable_to_non_nullable
as String?,sampel: freezed == sampel ? _self.sampel : sampel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$HasilLab {

 String get item;/// Nilai apa adanya dari sumber (desimal koma).
 String get nilai; String get satuan; String get rujukan; String? get sebelumnya; LabFlag? get flag;
/// Create a copy of HasilLab
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HasilLabCopyWith<HasilLab> get copyWith => _$HasilLabCopyWithImpl<HasilLab>(this as HasilLab, _$identity);

  /// Serializes this HasilLab to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HasilLab&&(identical(other.item, item) || other.item == item)&&(identical(other.nilai, nilai) || other.nilai == nilai)&&(identical(other.satuan, satuan) || other.satuan == satuan)&&(identical(other.rujukan, rujukan) || other.rujukan == rujukan)&&(identical(other.sebelumnya, sebelumnya) || other.sebelumnya == sebelumnya)&&(identical(other.flag, flag) || other.flag == flag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,nilai,satuan,rujukan,sebelumnya,flag);

@override
String toString() {
  return 'HasilLab(item: $item, nilai: $nilai, satuan: $satuan, rujukan: $rujukan, sebelumnya: $sebelumnya, flag: $flag)';
}


}

/// @nodoc
abstract mixin class $HasilLabCopyWith<$Res>  {
  factory $HasilLabCopyWith(HasilLab value, $Res Function(HasilLab) _then) = _$HasilLabCopyWithImpl;
@useResult
$Res call({
 String item, String nilai, String satuan, String rujukan, String? sebelumnya, LabFlag? flag
});




}
/// @nodoc
class _$HasilLabCopyWithImpl<$Res>
    implements $HasilLabCopyWith<$Res> {
  _$HasilLabCopyWithImpl(this._self, this._then);

  final HasilLab _self;
  final $Res Function(HasilLab) _then;

/// Create a copy of HasilLab
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,Object? nilai = null,Object? satuan = null,Object? rujukan = null,Object? sebelumnya = freezed,Object? flag = freezed,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as String,nilai: null == nilai ? _self.nilai : nilai // ignore: cast_nullable_to_non_nullable
as String,satuan: null == satuan ? _self.satuan : satuan // ignore: cast_nullable_to_non_nullable
as String,rujukan: null == rujukan ? _self.rujukan : rujukan // ignore: cast_nullable_to_non_nullable
as String,sebelumnya: freezed == sebelumnya ? _self.sebelumnya : sebelumnya // ignore: cast_nullable_to_non_nullable
as String?,flag: freezed == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as LabFlag?,
  ));
}

}


/// Adds pattern-matching-related methods to [HasilLab].
extension HasilLabPatterns on HasilLab {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HasilLab value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HasilLab() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HasilLab value)  $default,){
final _that = this;
switch (_that) {
case _HasilLab():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HasilLab value)?  $default,){
final _that = this;
switch (_that) {
case _HasilLab() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String item,  String nilai,  String satuan,  String rujukan,  String? sebelumnya,  LabFlag? flag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HasilLab() when $default != null:
return $default(_that.item,_that.nilai,_that.satuan,_that.rujukan,_that.sebelumnya,_that.flag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String item,  String nilai,  String satuan,  String rujukan,  String? sebelumnya,  LabFlag? flag)  $default,) {final _that = this;
switch (_that) {
case _HasilLab():
return $default(_that.item,_that.nilai,_that.satuan,_that.rujukan,_that.sebelumnya,_that.flag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String item,  String nilai,  String satuan,  String rujukan,  String? sebelumnya,  LabFlag? flag)?  $default,) {final _that = this;
switch (_that) {
case _HasilLab() when $default != null:
return $default(_that.item,_that.nilai,_that.satuan,_that.rujukan,_that.sebelumnya,_that.flag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HasilLab extends HasilLab {
  const _HasilLab({required this.item, required this.nilai, required this.satuan, required this.rujukan, this.sebelumnya, this.flag}): super._();
  factory _HasilLab.fromJson(Map<String, dynamic> json) => _$HasilLabFromJson(json);

@override final  String item;
/// Nilai apa adanya dari sumber (desimal koma).
@override final  String nilai;
@override final  String satuan;
@override final  String rujukan;
@override final  String? sebelumnya;
@override final  LabFlag? flag;

/// Create a copy of HasilLab
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HasilLabCopyWith<_HasilLab> get copyWith => __$HasilLabCopyWithImpl<_HasilLab>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HasilLabToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HasilLab&&(identical(other.item, item) || other.item == item)&&(identical(other.nilai, nilai) || other.nilai == nilai)&&(identical(other.satuan, satuan) || other.satuan == satuan)&&(identical(other.rujukan, rujukan) || other.rujukan == rujukan)&&(identical(other.sebelumnya, sebelumnya) || other.sebelumnya == sebelumnya)&&(identical(other.flag, flag) || other.flag == flag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,nilai,satuan,rujukan,sebelumnya,flag);

@override
String toString() {
  return 'HasilLab(item: $item, nilai: $nilai, satuan: $satuan, rujukan: $rujukan, sebelumnya: $sebelumnya, flag: $flag)';
}


}

/// @nodoc
abstract mixin class _$HasilLabCopyWith<$Res> implements $HasilLabCopyWith<$Res> {
  factory _$HasilLabCopyWith(_HasilLab value, $Res Function(_HasilLab) _then) = __$HasilLabCopyWithImpl;
@override @useResult
$Res call({
 String item, String nilai, String satuan, String rujukan, String? sebelumnya, LabFlag? flag
});




}
/// @nodoc
class __$HasilLabCopyWithImpl<$Res>
    implements _$HasilLabCopyWith<$Res> {
  __$HasilLabCopyWithImpl(this._self, this._then);

  final _HasilLab _self;
  final $Res Function(_HasilLab) _then;

/// Create a copy of HasilLab
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,Object? nilai = null,Object? satuan = null,Object? rujukan = null,Object? sebelumnya = freezed,Object? flag = freezed,}) {
  return _then(_HasilLab(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as String,nilai: null == nilai ? _self.nilai : nilai // ignore: cast_nullable_to_non_nullable
as String,satuan: null == satuan ? _self.satuan : satuan // ignore: cast_nullable_to_non_nullable
as String,rujukan: null == rujukan ? _self.rujukan : rujukan // ignore: cast_nullable_to_non_nullable
as String,sebelumnya: freezed == sebelumnya ? _self.sebelumnya : sebelumnya // ignore: cast_nullable_to_non_nullable
as String?,flag: freezed == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as LabFlag?,
  ));
}


}


/// @nodoc
mixin _$TrenLab {

 String get item; String get satuan;/// [bawah, atas].
 List<num> get rujukan; List<TitikTren> get titik;
/// Create a copy of TrenLab
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrenLabCopyWith<TrenLab> get copyWith => _$TrenLabCopyWithImpl<TrenLab>(this as TrenLab, _$identity);

  /// Serializes this TrenLab to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrenLab&&(identical(other.item, item) || other.item == item)&&(identical(other.satuan, satuan) || other.satuan == satuan)&&const DeepCollectionEquality().equals(other.rujukan, rujukan)&&const DeepCollectionEquality().equals(other.titik, titik));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,satuan,const DeepCollectionEquality().hash(rujukan),const DeepCollectionEquality().hash(titik));

@override
String toString() {
  return 'TrenLab(item: $item, satuan: $satuan, rujukan: $rujukan, titik: $titik)';
}


}

/// @nodoc
abstract mixin class $TrenLabCopyWith<$Res>  {
  factory $TrenLabCopyWith(TrenLab value, $Res Function(TrenLab) _then) = _$TrenLabCopyWithImpl;
@useResult
$Res call({
 String item, String satuan, List<num> rujukan, List<TitikTren> titik
});




}
/// @nodoc
class _$TrenLabCopyWithImpl<$Res>
    implements $TrenLabCopyWith<$Res> {
  _$TrenLabCopyWithImpl(this._self, this._then);

  final TrenLab _self;
  final $Res Function(TrenLab) _then;

/// Create a copy of TrenLab
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = null,Object? satuan = null,Object? rujukan = null,Object? titik = null,}) {
  return _then(_self.copyWith(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as String,satuan: null == satuan ? _self.satuan : satuan // ignore: cast_nullable_to_non_nullable
as String,rujukan: null == rujukan ? _self.rujukan : rujukan // ignore: cast_nullable_to_non_nullable
as List<num>,titik: null == titik ? _self.titik : titik // ignore: cast_nullable_to_non_nullable
as List<TitikTren>,
  ));
}

}


/// Adds pattern-matching-related methods to [TrenLab].
extension TrenLabPatterns on TrenLab {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrenLab value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrenLab() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrenLab value)  $default,){
final _that = this;
switch (_that) {
case _TrenLab():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrenLab value)?  $default,){
final _that = this;
switch (_that) {
case _TrenLab() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String item,  String satuan,  List<num> rujukan,  List<TitikTren> titik)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrenLab() when $default != null:
return $default(_that.item,_that.satuan,_that.rujukan,_that.titik);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String item,  String satuan,  List<num> rujukan,  List<TitikTren> titik)  $default,) {final _that = this;
switch (_that) {
case _TrenLab():
return $default(_that.item,_that.satuan,_that.rujukan,_that.titik);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String item,  String satuan,  List<num> rujukan,  List<TitikTren> titik)?  $default,) {final _that = this;
switch (_that) {
case _TrenLab() when $default != null:
return $default(_that.item,_that.satuan,_that.rujukan,_that.titik);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrenLab implements TrenLab {
  const _TrenLab({required this.item, required this.satuan, required final  List<num> rujukan, final  List<TitikTren> titik = const <TitikTren>[]}): _rujukan = rujukan,_titik = titik;
  factory _TrenLab.fromJson(Map<String, dynamic> json) => _$TrenLabFromJson(json);

@override final  String item;
@override final  String satuan;
/// [bawah, atas].
 final  List<num> _rujukan;
/// [bawah, atas].
@override List<num> get rujukan {
  if (_rujukan is EqualUnmodifiableListView) return _rujukan;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rujukan);
}

 final  List<TitikTren> _titik;
@override@JsonKey() List<TitikTren> get titik {
  if (_titik is EqualUnmodifiableListView) return _titik;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_titik);
}


/// Create a copy of TrenLab
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrenLabCopyWith<_TrenLab> get copyWith => __$TrenLabCopyWithImpl<_TrenLab>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrenLabToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrenLab&&(identical(other.item, item) || other.item == item)&&(identical(other.satuan, satuan) || other.satuan == satuan)&&const DeepCollectionEquality().equals(other._rujukan, _rujukan)&&const DeepCollectionEquality().equals(other._titik, _titik));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,item,satuan,const DeepCollectionEquality().hash(_rujukan),const DeepCollectionEquality().hash(_titik));

@override
String toString() {
  return 'TrenLab(item: $item, satuan: $satuan, rujukan: $rujukan, titik: $titik)';
}


}

/// @nodoc
abstract mixin class _$TrenLabCopyWith<$Res> implements $TrenLabCopyWith<$Res> {
  factory _$TrenLabCopyWith(_TrenLab value, $Res Function(_TrenLab) _then) = __$TrenLabCopyWithImpl;
@override @useResult
$Res call({
 String item, String satuan, List<num> rujukan, List<TitikTren> titik
});




}
/// @nodoc
class __$TrenLabCopyWithImpl<$Res>
    implements _$TrenLabCopyWith<$Res> {
  __$TrenLabCopyWithImpl(this._self, this._then);

  final _TrenLab _self;
  final $Res Function(_TrenLab) _then;

/// Create a copy of TrenLab
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = null,Object? satuan = null,Object? rujukan = null,Object? titik = null,}) {
  return _then(_TrenLab(
item: null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as String,satuan: null == satuan ? _self.satuan : satuan // ignore: cast_nullable_to_non_nullable
as String,rujukan: null == rujukan ? _self._rujukan : rujukan // ignore: cast_nullable_to_non_nullable
as List<num>,titik: null == titik ? _self._titik : titik // ignore: cast_nullable_to_non_nullable
as List<TitikTren>,
  ));
}


}


/// @nodoc
mixin _$TitikTren {

 String get waktu; num get nilai; String? get kunjungan;
/// Create a copy of TitikTren
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TitikTrenCopyWith<TitikTren> get copyWith => _$TitikTrenCopyWithImpl<TitikTren>(this as TitikTren, _$identity);

  /// Serializes this TitikTren to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TitikTren&&(identical(other.waktu, waktu) || other.waktu == waktu)&&(identical(other.nilai, nilai) || other.nilai == nilai)&&(identical(other.kunjungan, kunjungan) || other.kunjungan == kunjungan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,waktu,nilai,kunjungan);

@override
String toString() {
  return 'TitikTren(waktu: $waktu, nilai: $nilai, kunjungan: $kunjungan)';
}


}

/// @nodoc
abstract mixin class $TitikTrenCopyWith<$Res>  {
  factory $TitikTrenCopyWith(TitikTren value, $Res Function(TitikTren) _then) = _$TitikTrenCopyWithImpl;
@useResult
$Res call({
 String waktu, num nilai, String? kunjungan
});




}
/// @nodoc
class _$TitikTrenCopyWithImpl<$Res>
    implements $TitikTrenCopyWith<$Res> {
  _$TitikTrenCopyWithImpl(this._self, this._then);

  final TitikTren _self;
  final $Res Function(TitikTren) _then;

/// Create a copy of TitikTren
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? waktu = null,Object? nilai = null,Object? kunjungan = freezed,}) {
  return _then(_self.copyWith(
waktu: null == waktu ? _self.waktu : waktu // ignore: cast_nullable_to_non_nullable
as String,nilai: null == nilai ? _self.nilai : nilai // ignore: cast_nullable_to_non_nullable
as num,kunjungan: freezed == kunjungan ? _self.kunjungan : kunjungan // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TitikTren].
extension TitikTrenPatterns on TitikTren {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TitikTren value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TitikTren() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TitikTren value)  $default,){
final _that = this;
switch (_that) {
case _TitikTren():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TitikTren value)?  $default,){
final _that = this;
switch (_that) {
case _TitikTren() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String waktu,  num nilai,  String? kunjungan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TitikTren() when $default != null:
return $default(_that.waktu,_that.nilai,_that.kunjungan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String waktu,  num nilai,  String? kunjungan)  $default,) {final _that = this;
switch (_that) {
case _TitikTren():
return $default(_that.waktu,_that.nilai,_that.kunjungan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String waktu,  num nilai,  String? kunjungan)?  $default,) {final _that = this;
switch (_that) {
case _TitikTren() when $default != null:
return $default(_that.waktu,_that.nilai,_that.kunjungan);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TitikTren implements TitikTren {
  const _TitikTren({required this.waktu, required this.nilai, this.kunjungan});
  factory _TitikTren.fromJson(Map<String, dynamic> json) => _$TitikTrenFromJson(json);

@override final  String waktu;
@override final  num nilai;
@override final  String? kunjungan;

/// Create a copy of TitikTren
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TitikTrenCopyWith<_TitikTren> get copyWith => __$TitikTrenCopyWithImpl<_TitikTren>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TitikTrenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TitikTren&&(identical(other.waktu, waktu) || other.waktu == waktu)&&(identical(other.nilai, nilai) || other.nilai == nilai)&&(identical(other.kunjungan, kunjungan) || other.kunjungan == kunjungan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,waktu,nilai,kunjungan);

@override
String toString() {
  return 'TitikTren(waktu: $waktu, nilai: $nilai, kunjungan: $kunjungan)';
}


}

/// @nodoc
abstract mixin class _$TitikTrenCopyWith<$Res> implements $TitikTrenCopyWith<$Res> {
  factory _$TitikTrenCopyWith(_TitikTren value, $Res Function(_TitikTren) _then) = __$TitikTrenCopyWithImpl;
@override @useResult
$Res call({
 String waktu, num nilai, String? kunjungan
});




}
/// @nodoc
class __$TitikTrenCopyWithImpl<$Res>
    implements _$TitikTrenCopyWith<$Res> {
  __$TitikTrenCopyWithImpl(this._self, this._then);

  final _TitikTren _self;
  final $Res Function(_TitikTren) _then;

/// Create a copy of TitikTren
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? waktu = null,Object? nilai = null,Object? kunjungan = freezed,}) {
  return _then(_TitikTren(
waktu: null == waktu ? _self.waktu : waktu // ignore: cast_nullable_to_non_nullable
as String,nilai: null == nilai ? _self.nilai : nilai // ignore: cast_nullable_to_non_nullable
as num,kunjungan: freezed == kunjungan ? _self.kunjungan : kunjungan // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Penunjang {

 String get pemeriksaan; String get status; String? get dipesan; String? get hasil;
/// Create a copy of Penunjang
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PenunjangCopyWith<Penunjang> get copyWith => _$PenunjangCopyWithImpl<Penunjang>(this as Penunjang, _$identity);

  /// Serializes this Penunjang to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Penunjang&&(identical(other.pemeriksaan, pemeriksaan) || other.pemeriksaan == pemeriksaan)&&(identical(other.status, status) || other.status == status)&&(identical(other.dipesan, dipesan) || other.dipesan == dipesan)&&(identical(other.hasil, hasil) || other.hasil == hasil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pemeriksaan,status,dipesan,hasil);

@override
String toString() {
  return 'Penunjang(pemeriksaan: $pemeriksaan, status: $status, dipesan: $dipesan, hasil: $hasil)';
}


}

/// @nodoc
abstract mixin class $PenunjangCopyWith<$Res>  {
  factory $PenunjangCopyWith(Penunjang value, $Res Function(Penunjang) _then) = _$PenunjangCopyWithImpl;
@useResult
$Res call({
 String pemeriksaan, String status, String? dipesan, String? hasil
});




}
/// @nodoc
class _$PenunjangCopyWithImpl<$Res>
    implements $PenunjangCopyWith<$Res> {
  _$PenunjangCopyWithImpl(this._self, this._then);

  final Penunjang _self;
  final $Res Function(Penunjang) _then;

/// Create a copy of Penunjang
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pemeriksaan = null,Object? status = null,Object? dipesan = freezed,Object? hasil = freezed,}) {
  return _then(_self.copyWith(
pemeriksaan: null == pemeriksaan ? _self.pemeriksaan : pemeriksaan // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,dipesan: freezed == dipesan ? _self.dipesan : dipesan // ignore: cast_nullable_to_non_nullable
as String?,hasil: freezed == hasil ? _self.hasil : hasil // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Penunjang].
extension PenunjangPatterns on Penunjang {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Penunjang value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Penunjang() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Penunjang value)  $default,){
final _that = this;
switch (_that) {
case _Penunjang():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Penunjang value)?  $default,){
final _that = this;
switch (_that) {
case _Penunjang() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pemeriksaan,  String status,  String? dipesan,  String? hasil)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Penunjang() when $default != null:
return $default(_that.pemeriksaan,_that.status,_that.dipesan,_that.hasil);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pemeriksaan,  String status,  String? dipesan,  String? hasil)  $default,) {final _that = this;
switch (_that) {
case _Penunjang():
return $default(_that.pemeriksaan,_that.status,_that.dipesan,_that.hasil);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pemeriksaan,  String status,  String? dipesan,  String? hasil)?  $default,) {final _that = this;
switch (_that) {
case _Penunjang() when $default != null:
return $default(_that.pemeriksaan,_that.status,_that.dipesan,_that.hasil);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Penunjang implements Penunjang {
  const _Penunjang({required this.pemeriksaan, required this.status, this.dipesan, this.hasil});
  factory _Penunjang.fromJson(Map<String, dynamic> json) => _$PenunjangFromJson(json);

@override final  String pemeriksaan;
@override final  String status;
@override final  String? dipesan;
@override final  String? hasil;

/// Create a copy of Penunjang
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PenunjangCopyWith<_Penunjang> get copyWith => __$PenunjangCopyWithImpl<_Penunjang>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PenunjangToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Penunjang&&(identical(other.pemeriksaan, pemeriksaan) || other.pemeriksaan == pemeriksaan)&&(identical(other.status, status) || other.status == status)&&(identical(other.dipesan, dipesan) || other.dipesan == dipesan)&&(identical(other.hasil, hasil) || other.hasil == hasil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pemeriksaan,status,dipesan,hasil);

@override
String toString() {
  return 'Penunjang(pemeriksaan: $pemeriksaan, status: $status, dipesan: $dipesan, hasil: $hasil)';
}


}

/// @nodoc
abstract mixin class _$PenunjangCopyWith<$Res> implements $PenunjangCopyWith<$Res> {
  factory _$PenunjangCopyWith(_Penunjang value, $Res Function(_Penunjang) _then) = __$PenunjangCopyWithImpl;
@override @useResult
$Res call({
 String pemeriksaan, String status, String? dipesan, String? hasil
});




}
/// @nodoc
class __$PenunjangCopyWithImpl<$Res>
    implements _$PenunjangCopyWith<$Res> {
  __$PenunjangCopyWithImpl(this._self, this._then);

  final _Penunjang _self;
  final $Res Function(_Penunjang) _then;

/// Create a copy of Penunjang
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pemeriksaan = null,Object? status = null,Object? dipesan = freezed,Object? hasil = freezed,}) {
  return _then(_Penunjang(
pemeriksaan: null == pemeriksaan ? _self.pemeriksaan : pemeriksaan // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,dipesan: freezed == dipesan ? _self.dipesan : dipesan // ignore: cast_nullable_to_non_nullable
as String?,hasil: freezed == hasil ? _self.hasil : hasil // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LabMasuk {

 String get noReg; String get nama; String get bed; String get jam;/// Daftar pemeriksaan singkat, mis. "GDS, HbA1c, Na/K/Cl, +4".
 String get pemeriksaan; String get ringkasan; StatusLabMasuk get status;
/// Create a copy of LabMasuk
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LabMasukCopyWith<LabMasuk> get copyWith => _$LabMasukCopyWithImpl<LabMasuk>(this as LabMasuk, _$identity);

  /// Serializes this LabMasuk to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LabMasuk&&(identical(other.noReg, noReg) || other.noReg == noReg)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.bed, bed) || other.bed == bed)&&(identical(other.jam, jam) || other.jam == jam)&&(identical(other.pemeriksaan, pemeriksaan) || other.pemeriksaan == pemeriksaan)&&(identical(other.ringkasan, ringkasan) || other.ringkasan == ringkasan)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noReg,nama,bed,jam,pemeriksaan,ringkasan,status);

@override
String toString() {
  return 'LabMasuk(noReg: $noReg, nama: $nama, bed: $bed, jam: $jam, pemeriksaan: $pemeriksaan, ringkasan: $ringkasan, status: $status)';
}


}

/// @nodoc
abstract mixin class $LabMasukCopyWith<$Res>  {
  factory $LabMasukCopyWith(LabMasuk value, $Res Function(LabMasuk) _then) = _$LabMasukCopyWithImpl;
@useResult
$Res call({
 String noReg, String nama, String bed, String jam, String pemeriksaan, String ringkasan, StatusLabMasuk status
});




}
/// @nodoc
class _$LabMasukCopyWithImpl<$Res>
    implements $LabMasukCopyWith<$Res> {
  _$LabMasukCopyWithImpl(this._self, this._then);

  final LabMasuk _self;
  final $Res Function(LabMasuk) _then;

/// Create a copy of LabMasuk
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? noReg = null,Object? nama = null,Object? bed = null,Object? jam = null,Object? pemeriksaan = null,Object? ringkasan = null,Object? status = null,}) {
  return _then(_self.copyWith(
noReg: null == noReg ? _self.noReg : noReg // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,bed: null == bed ? _self.bed : bed // ignore: cast_nullable_to_non_nullable
as String,jam: null == jam ? _self.jam : jam // ignore: cast_nullable_to_non_nullable
as String,pemeriksaan: null == pemeriksaan ? _self.pemeriksaan : pemeriksaan // ignore: cast_nullable_to_non_nullable
as String,ringkasan: null == ringkasan ? _self.ringkasan : ringkasan // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusLabMasuk,
  ));
}

}


/// Adds pattern-matching-related methods to [LabMasuk].
extension LabMasukPatterns on LabMasuk {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LabMasuk value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LabMasuk() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LabMasuk value)  $default,){
final _that = this;
switch (_that) {
case _LabMasuk():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LabMasuk value)?  $default,){
final _that = this;
switch (_that) {
case _LabMasuk() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String noReg,  String nama,  String bed,  String jam,  String pemeriksaan,  String ringkasan,  StatusLabMasuk status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LabMasuk() when $default != null:
return $default(_that.noReg,_that.nama,_that.bed,_that.jam,_that.pemeriksaan,_that.ringkasan,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String noReg,  String nama,  String bed,  String jam,  String pemeriksaan,  String ringkasan,  StatusLabMasuk status)  $default,) {final _that = this;
switch (_that) {
case _LabMasuk():
return $default(_that.noReg,_that.nama,_that.bed,_that.jam,_that.pemeriksaan,_that.ringkasan,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String noReg,  String nama,  String bed,  String jam,  String pemeriksaan,  String ringkasan,  StatusLabMasuk status)?  $default,) {final _that = this;
switch (_that) {
case _LabMasuk() when $default != null:
return $default(_that.noReg,_that.nama,_that.bed,_that.jam,_that.pemeriksaan,_that.ringkasan,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LabMasuk extends LabMasuk {
  const _LabMasuk({required this.noReg, required this.nama, required this.bed, required this.jam, required this.pemeriksaan, required this.ringkasan, required this.status}): super._();
  factory _LabMasuk.fromJson(Map<String, dynamic> json) => _$LabMasukFromJson(json);

@override final  String noReg;
@override final  String nama;
@override final  String bed;
@override final  String jam;
/// Daftar pemeriksaan singkat, mis. "GDS, HbA1c, Na/K/Cl, +4".
@override final  String pemeriksaan;
@override final  String ringkasan;
@override final  StatusLabMasuk status;

/// Create a copy of LabMasuk
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LabMasukCopyWith<_LabMasuk> get copyWith => __$LabMasukCopyWithImpl<_LabMasuk>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LabMasukToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LabMasuk&&(identical(other.noReg, noReg) || other.noReg == noReg)&&(identical(other.nama, nama) || other.nama == nama)&&(identical(other.bed, bed) || other.bed == bed)&&(identical(other.jam, jam) || other.jam == jam)&&(identical(other.pemeriksaan, pemeriksaan) || other.pemeriksaan == pemeriksaan)&&(identical(other.ringkasan, ringkasan) || other.ringkasan == ringkasan)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,noReg,nama,bed,jam,pemeriksaan,ringkasan,status);

@override
String toString() {
  return 'LabMasuk(noReg: $noReg, nama: $nama, bed: $bed, jam: $jam, pemeriksaan: $pemeriksaan, ringkasan: $ringkasan, status: $status)';
}


}

/// @nodoc
abstract mixin class _$LabMasukCopyWith<$Res> implements $LabMasukCopyWith<$Res> {
  factory _$LabMasukCopyWith(_LabMasuk value, $Res Function(_LabMasuk) _then) = __$LabMasukCopyWithImpl;
@override @useResult
$Res call({
 String noReg, String nama, String bed, String jam, String pemeriksaan, String ringkasan, StatusLabMasuk status
});




}
/// @nodoc
class __$LabMasukCopyWithImpl<$Res>
    implements _$LabMasukCopyWith<$Res> {
  __$LabMasukCopyWithImpl(this._self, this._then);

  final _LabMasuk _self;
  final $Res Function(_LabMasuk) _then;

/// Create a copy of LabMasuk
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? noReg = null,Object? nama = null,Object? bed = null,Object? jam = null,Object? pemeriksaan = null,Object? ringkasan = null,Object? status = null,}) {
  return _then(_LabMasuk(
noReg: null == noReg ? _self.noReg : noReg // ignore: cast_nullable_to_non_nullable
as String,nama: null == nama ? _self.nama : nama // ignore: cast_nullable_to_non_nullable
as String,bed: null == bed ? _self.bed : bed // ignore: cast_nullable_to_non_nullable
as String,jam: null == jam ? _self.jam : jam // ignore: cast_nullable_to_non_nullable
as String,pemeriksaan: null == pemeriksaan ? _self.pemeriksaan : pemeriksaan // ignore: cast_nullable_to_non_nullable
as String,ringkasan: null == ringkasan ? _self.ringkasan : ringkasan // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusLabMasuk,
  ));
}


}

// dart format on
