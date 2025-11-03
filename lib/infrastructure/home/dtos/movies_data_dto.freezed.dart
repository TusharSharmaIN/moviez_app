// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoviesDataDto {

@JsonKey(name: 'results', defaultValue: <MovieDto>[]) List<MovieDto> get results;
/// Create a copy of MoviesDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoviesDataDtoCopyWith<MoviesDataDto> get copyWith => _$MoviesDataDtoCopyWithImpl<MoviesDataDto>(this as MoviesDataDto, _$identity);

  /// Serializes this MoviesDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoviesDataDto&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'MoviesDataDto(results: $results)';
}


}

/// @nodoc
abstract mixin class $MoviesDataDtoCopyWith<$Res>  {
  factory $MoviesDataDtoCopyWith(MoviesDataDto value, $Res Function(MoviesDataDto) _then) = _$MoviesDataDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'results', defaultValue: <MovieDto>[]) List<MovieDto> results
});




}
/// @nodoc
class _$MoviesDataDtoCopyWithImpl<$Res>
    implements $MoviesDataDtoCopyWith<$Res> {
  _$MoviesDataDtoCopyWithImpl(this._self, this._then);

  final MoviesDataDto _self;
  final $Res Function(MoviesDataDto) _then;

/// Create a copy of MoviesDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<MovieDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [MoviesDataDto].
extension MoviesDataDtoPatterns on MoviesDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoviesDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoviesDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoviesDataDto value)  $default,){
final _that = this;
switch (_that) {
case _MoviesDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoviesDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _MoviesDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'results', defaultValue: <MovieDto>[])  List<MovieDto> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoviesDataDto() when $default != null:
return $default(_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'results', defaultValue: <MovieDto>[])  List<MovieDto> results)  $default,) {final _that = this;
switch (_that) {
case _MoviesDataDto():
return $default(_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'results', defaultValue: <MovieDto>[])  List<MovieDto> results)?  $default,) {final _that = this;
switch (_that) {
case _MoviesDataDto() when $default != null:
return $default(_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoviesDataDto extends MoviesDataDto {
  const _MoviesDataDto({@JsonKey(name: 'results', defaultValue: <MovieDto>[]) required final  List<MovieDto> results}): _results = results,super._();
  factory _MoviesDataDto.fromJson(Map<String, dynamic> json) => _$MoviesDataDtoFromJson(json);

 final  List<MovieDto> _results;
@override@JsonKey(name: 'results', defaultValue: <MovieDto>[]) List<MovieDto> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of MoviesDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoviesDataDtoCopyWith<_MoviesDataDto> get copyWith => __$MoviesDataDtoCopyWithImpl<_MoviesDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoviesDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoviesDataDto&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'MoviesDataDto(results: $results)';
}


}

/// @nodoc
abstract mixin class _$MoviesDataDtoCopyWith<$Res> implements $MoviesDataDtoCopyWith<$Res> {
  factory _$MoviesDataDtoCopyWith(_MoviesDataDto value, $Res Function(_MoviesDataDto) _then) = __$MoviesDataDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'results', defaultValue: <MovieDto>[]) List<MovieDto> results
});




}
/// @nodoc
class __$MoviesDataDtoCopyWithImpl<$Res>
    implements _$MoviesDataDtoCopyWith<$Res> {
  __$MoviesDataDtoCopyWithImpl(this._self, this._then);

  final _MoviesDataDto _self;
  final $Res Function(_MoviesDataDto) _then;

/// Create a copy of MoviesDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_MoviesDataDto(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<MovieDto>,
  ));
}


}

// dart format on
