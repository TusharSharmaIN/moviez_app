// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoDto {

@JsonKey(name: 'key', defaultValue: '') String get key;@JsonKey(name: 'site', defaultValue: '') String get site;@JsonKey(name: 'type', defaultValue: '') String get type;
/// Create a copy of VideoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoDtoCopyWith<VideoDto> get copyWith => _$VideoDtoCopyWithImpl<VideoDto>(this as VideoDto, _$identity);

  /// Serializes this VideoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoDto&&(identical(other.key, key) || other.key == key)&&(identical(other.site, site) || other.site == site)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,site,type);

@override
String toString() {
  return 'VideoDto(key: $key, site: $site, type: $type)';
}


}

/// @nodoc
abstract mixin class $VideoDtoCopyWith<$Res>  {
  factory $VideoDtoCopyWith(VideoDto value, $Res Function(VideoDto) _then) = _$VideoDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'key', defaultValue: '') String key,@JsonKey(name: 'site', defaultValue: '') String site,@JsonKey(name: 'type', defaultValue: '') String type
});




}
/// @nodoc
class _$VideoDtoCopyWithImpl<$Res>
    implements $VideoDtoCopyWith<$Res> {
  _$VideoDtoCopyWithImpl(this._self, this._then);

  final VideoDto _self;
  final $Res Function(VideoDto) _then;

/// Create a copy of VideoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? site = null,Object? type = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,site: null == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoDto].
extension VideoDtoPatterns on VideoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoDto value)  $default,){
final _that = this;
switch (_that) {
case _VideoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoDto value)?  $default,){
final _that = this;
switch (_that) {
case _VideoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'key', defaultValue: '')  String key, @JsonKey(name: 'site', defaultValue: '')  String site, @JsonKey(name: 'type', defaultValue: '')  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoDto() when $default != null:
return $default(_that.key,_that.site,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'key', defaultValue: '')  String key, @JsonKey(name: 'site', defaultValue: '')  String site, @JsonKey(name: 'type', defaultValue: '')  String type)  $default,) {final _that = this;
switch (_that) {
case _VideoDto():
return $default(_that.key,_that.site,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'key', defaultValue: '')  String key, @JsonKey(name: 'site', defaultValue: '')  String site, @JsonKey(name: 'type', defaultValue: '')  String type)?  $default,) {final _that = this;
switch (_that) {
case _VideoDto() when $default != null:
return $default(_that.key,_that.site,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoDto extends VideoDto {
  const _VideoDto({@JsonKey(name: 'key', defaultValue: '') required this.key, @JsonKey(name: 'site', defaultValue: '') required this.site, @JsonKey(name: 'type', defaultValue: '') required this.type}): super._();
  factory _VideoDto.fromJson(Map<String, dynamic> json) => _$VideoDtoFromJson(json);

@override@JsonKey(name: 'key', defaultValue: '') final  String key;
@override@JsonKey(name: 'site', defaultValue: '') final  String site;
@override@JsonKey(name: 'type', defaultValue: '') final  String type;

/// Create a copy of VideoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoDtoCopyWith<_VideoDto> get copyWith => __$VideoDtoCopyWithImpl<_VideoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoDto&&(identical(other.key, key) || other.key == key)&&(identical(other.site, site) || other.site == site)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,site,type);

@override
String toString() {
  return 'VideoDto(key: $key, site: $site, type: $type)';
}


}

/// @nodoc
abstract mixin class _$VideoDtoCopyWith<$Res> implements $VideoDtoCopyWith<$Res> {
  factory _$VideoDtoCopyWith(_VideoDto value, $Res Function(_VideoDto) _then) = __$VideoDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'key', defaultValue: '') String key,@JsonKey(name: 'site', defaultValue: '') String site,@JsonKey(name: 'type', defaultValue: '') String type
});




}
/// @nodoc
class __$VideoDtoCopyWithImpl<$Res>
    implements _$VideoDtoCopyWith<$Res> {
  __$VideoDtoCopyWithImpl(this._self, this._then);

  final _VideoDto _self;
  final $Res Function(_VideoDto) _then;

/// Create a copy of VideoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? site = null,Object? type = null,}) {
  return _then(_VideoDto(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,site: null == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
