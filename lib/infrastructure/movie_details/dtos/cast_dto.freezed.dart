// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CastDto {

@JsonKey(name: 'id', defaultValue: 0) int get id;@JsonKey(name: 'name', defaultValue: '') String get name;@JsonKey(name: 'profile_path', defaultValue: '') String get profilePath;@JsonKey(name: 'character', defaultValue: '') String get character;
/// Create a copy of CastDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CastDtoCopyWith<CastDto> get copyWith => _$CastDtoCopyWithImpl<CastDto>(this as CastDto, _$identity);

  /// Serializes this CastDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CastDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.character, character) || other.character == character));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,profilePath,character);

@override
String toString() {
  return 'CastDto(id: $id, name: $name, profilePath: $profilePath, character: $character)';
}


}

/// @nodoc
abstract mixin class $CastDtoCopyWith<$Res>  {
  factory $CastDtoCopyWith(CastDto value, $Res Function(CastDto) _then) = _$CastDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id', defaultValue: 0) int id,@JsonKey(name: 'name', defaultValue: '') String name,@JsonKey(name: 'profile_path', defaultValue: '') String profilePath,@JsonKey(name: 'character', defaultValue: '') String character
});




}
/// @nodoc
class _$CastDtoCopyWithImpl<$Res>
    implements $CastDtoCopyWith<$Res> {
  _$CastDtoCopyWithImpl(this._self, this._then);

  final CastDto _self;
  final $Res Function(CastDto) _then;

/// Create a copy of CastDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? profilePath = null,Object? character = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profilePath: null == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CastDto].
extension CastDtoPatterns on CastDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CastDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CastDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CastDto value)  $default,){
final _that = this;
switch (_that) {
case _CastDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CastDto value)?  $default,){
final _that = this;
switch (_that) {
case _CastDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', defaultValue: 0)  int id, @JsonKey(name: 'name', defaultValue: '')  String name, @JsonKey(name: 'profile_path', defaultValue: '')  String profilePath, @JsonKey(name: 'character', defaultValue: '')  String character)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CastDto() when $default != null:
return $default(_that.id,_that.name,_that.profilePath,_that.character);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', defaultValue: 0)  int id, @JsonKey(name: 'name', defaultValue: '')  String name, @JsonKey(name: 'profile_path', defaultValue: '')  String profilePath, @JsonKey(name: 'character', defaultValue: '')  String character)  $default,) {final _that = this;
switch (_that) {
case _CastDto():
return $default(_that.id,_that.name,_that.profilePath,_that.character);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id', defaultValue: 0)  int id, @JsonKey(name: 'name', defaultValue: '')  String name, @JsonKey(name: 'profile_path', defaultValue: '')  String profilePath, @JsonKey(name: 'character', defaultValue: '')  String character)?  $default,) {final _that = this;
switch (_that) {
case _CastDto() when $default != null:
return $default(_that.id,_that.name,_that.profilePath,_that.character);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CastDto extends CastDto {
  const _CastDto({@JsonKey(name: 'id', defaultValue: 0) required this.id, @JsonKey(name: 'name', defaultValue: '') required this.name, @JsonKey(name: 'profile_path', defaultValue: '') required this.profilePath, @JsonKey(name: 'character', defaultValue: '') required this.character}): super._();
  factory _CastDto.fromJson(Map<String, dynamic> json) => _$CastDtoFromJson(json);

@override@JsonKey(name: 'id', defaultValue: 0) final  int id;
@override@JsonKey(name: 'name', defaultValue: '') final  String name;
@override@JsonKey(name: 'profile_path', defaultValue: '') final  String profilePath;
@override@JsonKey(name: 'character', defaultValue: '') final  String character;

/// Create a copy of CastDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CastDtoCopyWith<_CastDto> get copyWith => __$CastDtoCopyWithImpl<_CastDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CastDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CastDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.character, character) || other.character == character));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,profilePath,character);

@override
String toString() {
  return 'CastDto(id: $id, name: $name, profilePath: $profilePath, character: $character)';
}


}

/// @nodoc
abstract mixin class _$CastDtoCopyWith<$Res> implements $CastDtoCopyWith<$Res> {
  factory _$CastDtoCopyWith(_CastDto value, $Res Function(_CastDto) _then) = __$CastDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id', defaultValue: 0) int id,@JsonKey(name: 'name', defaultValue: '') String name,@JsonKey(name: 'profile_path', defaultValue: '') String profilePath,@JsonKey(name: 'character', defaultValue: '') String character
});




}
/// @nodoc
class __$CastDtoCopyWithImpl<$Res>
    implements _$CastDtoCopyWith<$Res> {
  __$CastDtoCopyWithImpl(this._self, this._then);

  final _CastDto _self;
  final $Res Function(_CastDto) _then;

/// Create a copy of CastDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? profilePath = null,Object? character = null,}) {
  return _then(_CastDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profilePath: null == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
