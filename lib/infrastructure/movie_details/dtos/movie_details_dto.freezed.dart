// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDetailsDto {

@JsonKey(name: 'backdrop_path', defaultValue: '') String get backdropPath;@JsonKey(name: 'genres', defaultValue: []) List<GenreDto> get genres;@JsonKey(name: 'id', defaultValue: 0) num get id;@JsonKey(name: 'imdb_id', defaultValue: '') String get imdbId;@JsonKey(name: 'original_language', defaultValue: '') String get originalLanguage;@JsonKey(name: 'overview', defaultValue: '') String get overview;@JsonKey(name: 'poster_path', defaultValue: '') String get posterPath;@JsonKey(name: 'release_date', defaultValue: '') String get releaseDate;@JsonKey(name: 'runtime', defaultValue: 0) num get runtime;@JsonKey(name: 'title', defaultValue: '') String get title;@JsonKey(name: 'video', defaultValue: false) bool get video;
/// Create a copy of MovieDetailsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailsDtoCopyWith<MovieDetailsDto> get copyWith => _$MovieDetailsDtoCopyWithImpl<MovieDetailsDto>(this as MovieDetailsDto, _$identity);

  /// Serializes this MovieDetailsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsDto&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.id, id) || other.id == id)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backdropPath,const DeepCollectionEquality().hash(genres),id,imdbId,originalLanguage,overview,posterPath,releaseDate,runtime,title,video);

@override
String toString() {
  return 'MovieDetailsDto(backdropPath: $backdropPath, genres: $genres, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, runtime: $runtime, title: $title, video: $video)';
}


}

/// @nodoc
abstract mixin class $MovieDetailsDtoCopyWith<$Res>  {
  factory $MovieDetailsDtoCopyWith(MovieDetailsDto value, $Res Function(MovieDetailsDto) _then) = _$MovieDetailsDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'backdrop_path', defaultValue: '') String backdropPath,@JsonKey(name: 'genres', defaultValue: []) List<GenreDto> genres,@JsonKey(name: 'id', defaultValue: 0) num id,@JsonKey(name: 'imdb_id', defaultValue: '') String imdbId,@JsonKey(name: 'original_language', defaultValue: '') String originalLanguage,@JsonKey(name: 'overview', defaultValue: '') String overview,@JsonKey(name: 'poster_path', defaultValue: '') String posterPath,@JsonKey(name: 'release_date', defaultValue: '') String releaseDate,@JsonKey(name: 'runtime', defaultValue: 0) num runtime,@JsonKey(name: 'title', defaultValue: '') String title,@JsonKey(name: 'video', defaultValue: false) bool video
});




}
/// @nodoc
class _$MovieDetailsDtoCopyWithImpl<$Res>
    implements $MovieDetailsDtoCopyWith<$Res> {
  _$MovieDetailsDtoCopyWithImpl(this._self, this._then);

  final MovieDetailsDto _self;
  final $Res Function(MovieDetailsDto) _then;

/// Create a copy of MovieDetailsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backdropPath = null,Object? genres = null,Object? id = null,Object? imdbId = null,Object? originalLanguage = null,Object? overview = null,Object? posterPath = null,Object? releaseDate = null,Object? runtime = null,Object? title = null,Object? video = null,}) {
  return _then(_self.copyWith(
backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreDto>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as num,imdbId: null == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as num,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetailsDto].
extension MovieDetailsDtoPatterns on MovieDetailsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetailsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetailsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetailsDto value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetailsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetailsDto value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetailsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'backdrop_path', defaultValue: '')  String backdropPath, @JsonKey(name: 'genres', defaultValue: [])  List<GenreDto> genres, @JsonKey(name: 'id', defaultValue: 0)  num id, @JsonKey(name: 'imdb_id', defaultValue: '')  String imdbId, @JsonKey(name: 'original_language', defaultValue: '')  String originalLanguage, @JsonKey(name: 'overview', defaultValue: '')  String overview, @JsonKey(name: 'poster_path', defaultValue: '')  String posterPath, @JsonKey(name: 'release_date', defaultValue: '')  String releaseDate, @JsonKey(name: 'runtime', defaultValue: 0)  num runtime, @JsonKey(name: 'title', defaultValue: '')  String title, @JsonKey(name: 'video', defaultValue: false)  bool video)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailsDto() when $default != null:
return $default(_that.backdropPath,_that.genres,_that.id,_that.imdbId,_that.originalLanguage,_that.overview,_that.posterPath,_that.releaseDate,_that.runtime,_that.title,_that.video);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'backdrop_path', defaultValue: '')  String backdropPath, @JsonKey(name: 'genres', defaultValue: [])  List<GenreDto> genres, @JsonKey(name: 'id', defaultValue: 0)  num id, @JsonKey(name: 'imdb_id', defaultValue: '')  String imdbId, @JsonKey(name: 'original_language', defaultValue: '')  String originalLanguage, @JsonKey(name: 'overview', defaultValue: '')  String overview, @JsonKey(name: 'poster_path', defaultValue: '')  String posterPath, @JsonKey(name: 'release_date', defaultValue: '')  String releaseDate, @JsonKey(name: 'runtime', defaultValue: 0)  num runtime, @JsonKey(name: 'title', defaultValue: '')  String title, @JsonKey(name: 'video', defaultValue: false)  bool video)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailsDto():
return $default(_that.backdropPath,_that.genres,_that.id,_that.imdbId,_that.originalLanguage,_that.overview,_that.posterPath,_that.releaseDate,_that.runtime,_that.title,_that.video);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'backdrop_path', defaultValue: '')  String backdropPath, @JsonKey(name: 'genres', defaultValue: [])  List<GenreDto> genres, @JsonKey(name: 'id', defaultValue: 0)  num id, @JsonKey(name: 'imdb_id', defaultValue: '')  String imdbId, @JsonKey(name: 'original_language', defaultValue: '')  String originalLanguage, @JsonKey(name: 'overview', defaultValue: '')  String overview, @JsonKey(name: 'poster_path', defaultValue: '')  String posterPath, @JsonKey(name: 'release_date', defaultValue: '')  String releaseDate, @JsonKey(name: 'runtime', defaultValue: 0)  num runtime, @JsonKey(name: 'title', defaultValue: '')  String title, @JsonKey(name: 'video', defaultValue: false)  bool video)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailsDto() when $default != null:
return $default(_that.backdropPath,_that.genres,_that.id,_that.imdbId,_that.originalLanguage,_that.overview,_that.posterPath,_that.releaseDate,_that.runtime,_that.title,_that.video);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieDetailsDto extends MovieDetailsDto {
  const _MovieDetailsDto({@JsonKey(name: 'backdrop_path', defaultValue: '') required this.backdropPath, @JsonKey(name: 'genres', defaultValue: []) required final  List<GenreDto> genres, @JsonKey(name: 'id', defaultValue: 0) required this.id, @JsonKey(name: 'imdb_id', defaultValue: '') required this.imdbId, @JsonKey(name: 'original_language', defaultValue: '') required this.originalLanguage, @JsonKey(name: 'overview', defaultValue: '') required this.overview, @JsonKey(name: 'poster_path', defaultValue: '') required this.posterPath, @JsonKey(name: 'release_date', defaultValue: '') required this.releaseDate, @JsonKey(name: 'runtime', defaultValue: 0) required this.runtime, @JsonKey(name: 'title', defaultValue: '') required this.title, @JsonKey(name: 'video', defaultValue: false) required this.video}): _genres = genres,super._();
  factory _MovieDetailsDto.fromJson(Map<String, dynamic> json) => _$MovieDetailsDtoFromJson(json);

@override@JsonKey(name: 'backdrop_path', defaultValue: '') final  String backdropPath;
 final  List<GenreDto> _genres;
@override@JsonKey(name: 'genres', defaultValue: []) List<GenreDto> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

@override@JsonKey(name: 'id', defaultValue: 0) final  num id;
@override@JsonKey(name: 'imdb_id', defaultValue: '') final  String imdbId;
@override@JsonKey(name: 'original_language', defaultValue: '') final  String originalLanguage;
@override@JsonKey(name: 'overview', defaultValue: '') final  String overview;
@override@JsonKey(name: 'poster_path', defaultValue: '') final  String posterPath;
@override@JsonKey(name: 'release_date', defaultValue: '') final  String releaseDate;
@override@JsonKey(name: 'runtime', defaultValue: 0) final  num runtime;
@override@JsonKey(name: 'title', defaultValue: '') final  String title;
@override@JsonKey(name: 'video', defaultValue: false) final  bool video;

/// Create a copy of MovieDetailsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailsDtoCopyWith<_MovieDetailsDto> get copyWith => __$MovieDetailsDtoCopyWithImpl<_MovieDetailsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieDetailsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailsDto&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.id, id) || other.id == id)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backdropPath,const DeepCollectionEquality().hash(_genres),id,imdbId,originalLanguage,overview,posterPath,releaseDate,runtime,title,video);

@override
String toString() {
  return 'MovieDetailsDto(backdropPath: $backdropPath, genres: $genres, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, runtime: $runtime, title: $title, video: $video)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailsDtoCopyWith<$Res> implements $MovieDetailsDtoCopyWith<$Res> {
  factory _$MovieDetailsDtoCopyWith(_MovieDetailsDto value, $Res Function(_MovieDetailsDto) _then) = __$MovieDetailsDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'backdrop_path', defaultValue: '') String backdropPath,@JsonKey(name: 'genres', defaultValue: []) List<GenreDto> genres,@JsonKey(name: 'id', defaultValue: 0) num id,@JsonKey(name: 'imdb_id', defaultValue: '') String imdbId,@JsonKey(name: 'original_language', defaultValue: '') String originalLanguage,@JsonKey(name: 'overview', defaultValue: '') String overview,@JsonKey(name: 'poster_path', defaultValue: '') String posterPath,@JsonKey(name: 'release_date', defaultValue: '') String releaseDate,@JsonKey(name: 'runtime', defaultValue: 0) num runtime,@JsonKey(name: 'title', defaultValue: '') String title,@JsonKey(name: 'video', defaultValue: false) bool video
});




}
/// @nodoc
class __$MovieDetailsDtoCopyWithImpl<$Res>
    implements _$MovieDetailsDtoCopyWith<$Res> {
  __$MovieDetailsDtoCopyWithImpl(this._self, this._then);

  final _MovieDetailsDto _self;
  final $Res Function(_MovieDetailsDto) _then;

/// Create a copy of MovieDetailsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backdropPath = null,Object? genres = null,Object? id = null,Object? imdbId = null,Object? originalLanguage = null,Object? overview = null,Object? posterPath = null,Object? releaseDate = null,Object? runtime = null,Object? title = null,Object? video = null,}) {
  return _then(_MovieDetailsDto(
backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreDto>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as num,imdbId: null == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as num,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$GenreDto {

@JsonKey(name: 'id', defaultValue: 0) num get id;@JsonKey(name: 'name', defaultValue: '') String get name;
/// Create a copy of GenreDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenreDtoCopyWith<GenreDto> get copyWith => _$GenreDtoCopyWithImpl<GenreDto>(this as GenreDto, _$identity);

  /// Serializes this GenreDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenreDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'GenreDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $GenreDtoCopyWith<$Res>  {
  factory $GenreDtoCopyWith(GenreDto value, $Res Function(GenreDto) _then) = _$GenreDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id', defaultValue: 0) num id,@JsonKey(name: 'name', defaultValue: '') String name
});




}
/// @nodoc
class _$GenreDtoCopyWithImpl<$Res>
    implements $GenreDtoCopyWith<$Res> {
  _$GenreDtoCopyWithImpl(this._self, this._then);

  final GenreDto _self;
  final $Res Function(GenreDto) _then;

/// Create a copy of GenreDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as num,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GenreDto].
extension GenreDtoPatterns on GenreDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenreDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenreDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenreDto value)  $default,){
final _that = this;
switch (_that) {
case _GenreDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenreDto value)?  $default,){
final _that = this;
switch (_that) {
case _GenreDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', defaultValue: 0)  num id, @JsonKey(name: 'name', defaultValue: '')  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenreDto() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id', defaultValue: 0)  num id, @JsonKey(name: 'name', defaultValue: '')  String name)  $default,) {final _that = this;
switch (_that) {
case _GenreDto():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id', defaultValue: 0)  num id, @JsonKey(name: 'name', defaultValue: '')  String name)?  $default,) {final _that = this;
switch (_that) {
case _GenreDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenreDto extends GenreDto {
  const _GenreDto({@JsonKey(name: 'id', defaultValue: 0) required this.id, @JsonKey(name: 'name', defaultValue: '') required this.name}): super._();
  factory _GenreDto.fromJson(Map<String, dynamic> json) => _$GenreDtoFromJson(json);

@override@JsonKey(name: 'id', defaultValue: 0) final  num id;
@override@JsonKey(name: 'name', defaultValue: '') final  String name;

/// Create a copy of GenreDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenreDtoCopyWith<_GenreDto> get copyWith => __$GenreDtoCopyWithImpl<_GenreDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenreDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenreDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'GenreDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$GenreDtoCopyWith<$Res> implements $GenreDtoCopyWith<$Res> {
  factory _$GenreDtoCopyWith(_GenreDto value, $Res Function(_GenreDto) _then) = __$GenreDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id', defaultValue: 0) num id,@JsonKey(name: 'name', defaultValue: '') String name
});




}
/// @nodoc
class __$GenreDtoCopyWithImpl<$Res>
    implements _$GenreDtoCopyWith<$Res> {
  __$GenreDtoCopyWithImpl(this._self, this._then);

  final _GenreDto _self;
  final $Res Function(_GenreDto) _then;

/// Create a copy of GenreDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_GenreDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as num,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
