// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Master {

 double get lat; double get long; String get name; String get description; MasterType get type;
/// Create a copy of Master
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterCopyWith<Master> get copyWith => _$MasterCopyWithImpl<Master>(this as Master, _$identity);

  /// Serializes this Master to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Master&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,long,name,description,type);

@override
String toString() {
  return 'Master(lat: $lat, long: $long, name: $name, description: $description, type: $type)';
}


}

/// @nodoc
abstract mixin class $MasterCopyWith<$Res>  {
  factory $MasterCopyWith(Master value, $Res Function(Master) _then) = _$MasterCopyWithImpl;
@useResult
$Res call({
 double lat, double long, String name, String description, MasterType type
});




}
/// @nodoc
class _$MasterCopyWithImpl<$Res>
    implements $MasterCopyWith<$Res> {
  _$MasterCopyWithImpl(this._self, this._then);

  final Master _self;
  final $Res Function(Master) _then;

/// Create a copy of Master
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = null,Object? long = null,Object? name = null,Object? description = null,Object? type = null,}) {
  return _then(_self.copyWith(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,long: null == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as double,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MasterType,
  ));
}

}


/// Adds pattern-matching-related methods to [Master].
extension MasterPatterns on Master {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Master value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Master() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Master value)  $default,){
final _that = this;
switch (_that) {
case _Master():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Master value)?  $default,){
final _that = this;
switch (_that) {
case _Master() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double lat,  double long,  String name,  String description,  MasterType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Master() when $default != null:
return $default(_that.lat,_that.long,_that.name,_that.description,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double lat,  double long,  String name,  String description,  MasterType type)  $default,) {final _that = this;
switch (_that) {
case _Master():
return $default(_that.lat,_that.long,_that.name,_that.description,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double lat,  double long,  String name,  String description,  MasterType type)?  $default,) {final _that = this;
switch (_that) {
case _Master() when $default != null:
return $default(_that.lat,_that.long,_that.name,_that.description,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Master extends Master {
  const _Master({required this.lat, required this.long, required this.name, required this.description, required this.type}): super._();
  factory _Master.fromJson(Map<String, dynamic> json) => _$MasterFromJson(json);

@override final  double lat;
@override final  double long;
@override final  String name;
@override final  String description;
@override final  MasterType type;

/// Create a copy of Master
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasterCopyWith<_Master> get copyWith => __$MasterCopyWithImpl<_Master>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MasterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Master&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,long,name,description,type);

@override
String toString() {
  return 'Master(lat: $lat, long: $long, name: $name, description: $description, type: $type)';
}


}

/// @nodoc
abstract mixin class _$MasterCopyWith<$Res> implements $MasterCopyWith<$Res> {
  factory _$MasterCopyWith(_Master value, $Res Function(_Master) _then) = __$MasterCopyWithImpl;
@override @useResult
$Res call({
 double lat, double long, String name, String description, MasterType type
});




}
/// @nodoc
class __$MasterCopyWithImpl<$Res>
    implements _$MasterCopyWith<$Res> {
  __$MasterCopyWithImpl(this._self, this._then);

  final _Master _self;
  final $Res Function(_Master) _then;

/// Create a copy of Master
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = null,Object? long = null,Object? name = null,Object? description = null,Object? type = null,}) {
  return _then(_Master(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,long: null == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as double,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MasterType,
  ));
}


}

// dart format on
