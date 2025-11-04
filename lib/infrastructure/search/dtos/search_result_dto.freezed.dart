// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchResultDto {

@JsonKey(name: 'results', defaultValue: <MovieDto>[]) List<MovieDto> get movies;
/// Create a copy of SearchResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultDtoCopyWith<SearchResultDto> get copyWith => _$SearchResultDtoCopyWithImpl<SearchResultDto>(this as SearchResultDto, _$identity);

  /// Serializes this SearchResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultDto&&const DeepCollectionEquality().equals(other.movies, movies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(movies));

@override
String toString() {
  return 'SearchResultDto(movies: $movies)';
}


}

/// @nodoc
abstract mixin class $SearchResultDtoCopyWith<$Res>  {
  factory $SearchResultDtoCopyWith(SearchResultDto value, $Res Function(SearchResultDto) _then) = _$SearchResultDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'results', defaultValue: <MovieDto>[]) List<MovieDto> movies
});




}
/// @nodoc
class _$SearchResultDtoCopyWithImpl<$Res>
    implements $SearchResultDtoCopyWith<$Res> {
  _$SearchResultDtoCopyWithImpl(this._self, this._then);

  final SearchResultDto _self;
  final $Res Function(SearchResultDto) _then;

/// Create a copy of SearchResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movies = null,}) {
  return _then(_self.copyWith(
movies: null == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as List<MovieDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchResultDto].
extension SearchResultDtoPatterns on SearchResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResultDto value)  $default,){
final _that = this;
switch (_that) {
case _SearchResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'results', defaultValue: <MovieDto>[])  List<MovieDto> movies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResultDto() when $default != null:
return $default(_that.movies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'results', defaultValue: <MovieDto>[])  List<MovieDto> movies)  $default,) {final _that = this;
switch (_that) {
case _SearchResultDto():
return $default(_that.movies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'results', defaultValue: <MovieDto>[])  List<MovieDto> movies)?  $default,) {final _that = this;
switch (_that) {
case _SearchResultDto() when $default != null:
return $default(_that.movies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchResultDto extends SearchResultDto {
  const _SearchResultDto({@JsonKey(name: 'results', defaultValue: <MovieDto>[]) required final  List<MovieDto> movies}): _movies = movies,super._();
  factory _SearchResultDto.fromJson(Map<String, dynamic> json) => _$SearchResultDtoFromJson(json);

 final  List<MovieDto> _movies;
@override@JsonKey(name: 'results', defaultValue: <MovieDto>[]) List<MovieDto> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}


/// Create a copy of SearchResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResultDtoCopyWith<_SearchResultDto> get copyWith => __$SearchResultDtoCopyWithImpl<_SearchResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResultDto&&const DeepCollectionEquality().equals(other._movies, _movies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_movies));

@override
String toString() {
  return 'SearchResultDto(movies: $movies)';
}


}

/// @nodoc
abstract mixin class _$SearchResultDtoCopyWith<$Res> implements $SearchResultDtoCopyWith<$Res> {
  factory _$SearchResultDtoCopyWith(_SearchResultDto value, $Res Function(_SearchResultDto) _then) = __$SearchResultDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'results', defaultValue: <MovieDto>[]) List<MovieDto> movies
});




}
/// @nodoc
class __$SearchResultDtoCopyWithImpl<$Res>
    implements _$SearchResultDtoCopyWith<$Res> {
  __$SearchResultDtoCopyWithImpl(this._self, this._then);

  final _SearchResultDto _self;
  final $Res Function(_SearchResultDto) _then;

/// Create a copy of SearchResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movies = null,}) {
  return _then(_SearchResultDto(
movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<MovieDto>,
  ));
}


}

// dart format on
