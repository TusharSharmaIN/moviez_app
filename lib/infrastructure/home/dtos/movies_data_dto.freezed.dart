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


/// @nodoc
mixin _$MovieDto {

@JsonKey(name: 'adult', defaultValue: false) bool get adult;@JsonKey(name: 'backdrop_path', defaultValue: '') String get backdropPath;@JsonKey(name: 'genre_ids', defaultValue: <int>[]) List<int> get genreIds;@JsonKey(name: 'id', defaultValue: 0) int get id;@JsonKey(name: 'original_language', defaultValue: '') String get originalLanguage;@JsonKey(name: 'overview', defaultValue: '') String get overview;@JsonKey(name: 'poster_path', defaultValue: '') String get posterPath;@JsonKey(name: 'release_date', defaultValue: '') String get releaseDate;@JsonKey(name: 'title', defaultValue: '') String get title;
/// Create a copy of MovieDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDtoCopyWith<MovieDto> get copyWith => _$MovieDtoCopyWithImpl<MovieDto>(this as MovieDto, _$identity);

  /// Serializes this MovieDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDto&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(genreIds),id,originalLanguage,overview,posterPath,releaseDate,title);

@override
String toString() {
  return 'MovieDto(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, title: $title)';
}


}

/// @nodoc
abstract mixin class $MovieDtoCopyWith<$Res>  {
  factory $MovieDtoCopyWith(MovieDto value, $Res Function(MovieDto) _then) = _$MovieDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'adult', defaultValue: false) bool adult,@JsonKey(name: 'backdrop_path', defaultValue: '') String backdropPath,@JsonKey(name: 'genre_ids', defaultValue: <int>[]) List<int> genreIds,@JsonKey(name: 'id', defaultValue: 0) int id,@JsonKey(name: 'original_language', defaultValue: '') String originalLanguage,@JsonKey(name: 'overview', defaultValue: '') String overview,@JsonKey(name: 'poster_path', defaultValue: '') String posterPath,@JsonKey(name: 'release_date', defaultValue: '') String releaseDate,@JsonKey(name: 'title', defaultValue: '') String title
});




}
/// @nodoc
class _$MovieDtoCopyWithImpl<$Res>
    implements $MovieDtoCopyWith<$Res> {
  _$MovieDtoCopyWithImpl(this._self, this._then);

  final MovieDto _self;
  final $Res Function(MovieDto) _then;

/// Create a copy of MovieDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = null,Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? overview = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,}) {
  return _then(_self.copyWith(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDto].
extension MovieDtoPatterns on MovieDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDto value)  $default,){
final _that = this;
switch (_that) {
case _MovieDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDto value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'adult', defaultValue: false)  bool adult, @JsonKey(name: 'backdrop_path', defaultValue: '')  String backdropPath, @JsonKey(name: 'genre_ids', defaultValue: <int>[])  List<int> genreIds, @JsonKey(name: 'id', defaultValue: 0)  int id, @JsonKey(name: 'original_language', defaultValue: '')  String originalLanguage, @JsonKey(name: 'overview', defaultValue: '')  String overview, @JsonKey(name: 'poster_path', defaultValue: '')  String posterPath, @JsonKey(name: 'release_date', defaultValue: '')  String releaseDate, @JsonKey(name: 'title', defaultValue: '')  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDto() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.overview,_that.posterPath,_that.releaseDate,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'adult', defaultValue: false)  bool adult, @JsonKey(name: 'backdrop_path', defaultValue: '')  String backdropPath, @JsonKey(name: 'genre_ids', defaultValue: <int>[])  List<int> genreIds, @JsonKey(name: 'id', defaultValue: 0)  int id, @JsonKey(name: 'original_language', defaultValue: '')  String originalLanguage, @JsonKey(name: 'overview', defaultValue: '')  String overview, @JsonKey(name: 'poster_path', defaultValue: '')  String posterPath, @JsonKey(name: 'release_date', defaultValue: '')  String releaseDate, @JsonKey(name: 'title', defaultValue: '')  String title)  $default,) {final _that = this;
switch (_that) {
case _MovieDto():
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.overview,_that.posterPath,_that.releaseDate,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'adult', defaultValue: false)  bool adult, @JsonKey(name: 'backdrop_path', defaultValue: '')  String backdropPath, @JsonKey(name: 'genre_ids', defaultValue: <int>[])  List<int> genreIds, @JsonKey(name: 'id', defaultValue: 0)  int id, @JsonKey(name: 'original_language', defaultValue: '')  String originalLanguage, @JsonKey(name: 'overview', defaultValue: '')  String overview, @JsonKey(name: 'poster_path', defaultValue: '')  String posterPath, @JsonKey(name: 'release_date', defaultValue: '')  String releaseDate, @JsonKey(name: 'title', defaultValue: '')  String title)?  $default,) {final _that = this;
switch (_that) {
case _MovieDto() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.overview,_that.posterPath,_that.releaseDate,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieDto extends MovieDto {
  const _MovieDto({@JsonKey(name: 'adult', defaultValue: false) required this.adult, @JsonKey(name: 'backdrop_path', defaultValue: '') required this.backdropPath, @JsonKey(name: 'genre_ids', defaultValue: <int>[]) required final  List<int> genreIds, @JsonKey(name: 'id', defaultValue: 0) required this.id, @JsonKey(name: 'original_language', defaultValue: '') required this.originalLanguage, @JsonKey(name: 'overview', defaultValue: '') required this.overview, @JsonKey(name: 'poster_path', defaultValue: '') required this.posterPath, @JsonKey(name: 'release_date', defaultValue: '') required this.releaseDate, @JsonKey(name: 'title', defaultValue: '') required this.title}): _genreIds = genreIds,super._();
  factory _MovieDto.fromJson(Map<String, dynamic> json) => _$MovieDtoFromJson(json);

@override@JsonKey(name: 'adult', defaultValue: false) final  bool adult;
@override@JsonKey(name: 'backdrop_path', defaultValue: '') final  String backdropPath;
 final  List<int> _genreIds;
@override@JsonKey(name: 'genre_ids', defaultValue: <int>[]) List<int> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}

@override@JsonKey(name: 'id', defaultValue: 0) final  int id;
@override@JsonKey(name: 'original_language', defaultValue: '') final  String originalLanguage;
@override@JsonKey(name: 'overview', defaultValue: '') final  String overview;
@override@JsonKey(name: 'poster_path', defaultValue: '') final  String posterPath;
@override@JsonKey(name: 'release_date', defaultValue: '') final  String releaseDate;
@override@JsonKey(name: 'title', defaultValue: '') final  String title;

/// Create a copy of MovieDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDtoCopyWith<_MovieDto> get copyWith => __$MovieDtoCopyWithImpl<_MovieDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDto&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(_genreIds),id,originalLanguage,overview,posterPath,releaseDate,title);

@override
String toString() {
  return 'MovieDto(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, title: $title)';
}


}

/// @nodoc
abstract mixin class _$MovieDtoCopyWith<$Res> implements $MovieDtoCopyWith<$Res> {
  factory _$MovieDtoCopyWith(_MovieDto value, $Res Function(_MovieDto) _then) = __$MovieDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'adult', defaultValue: false) bool adult,@JsonKey(name: 'backdrop_path', defaultValue: '') String backdropPath,@JsonKey(name: 'genre_ids', defaultValue: <int>[]) List<int> genreIds,@JsonKey(name: 'id', defaultValue: 0) int id,@JsonKey(name: 'original_language', defaultValue: '') String originalLanguage,@JsonKey(name: 'overview', defaultValue: '') String overview,@JsonKey(name: 'poster_path', defaultValue: '') String posterPath,@JsonKey(name: 'release_date', defaultValue: '') String releaseDate,@JsonKey(name: 'title', defaultValue: '') String title
});




}
/// @nodoc
class __$MovieDtoCopyWithImpl<$Res>
    implements _$MovieDtoCopyWith<$Res> {
  __$MovieDtoCopyWithImpl(this._self, this._then);

  final _MovieDto _self;
  final $Res Function(_MovieDto) _then;

/// Create a copy of MovieDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = null,Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? overview = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,}) {
  return _then(_MovieDto(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
