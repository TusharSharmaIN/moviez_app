// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDto {

@JsonKey(name: 'adult', defaultValue: false) bool get adult;@JsonKey(name: 'backdrop_path', defaultValue: '') String get backdropPath;@JsonKey(name: 'genre_ids', defaultValue: <num>[]) List<num> get genreIds;@JsonKey(name: 'id', defaultValue: 0) num get id;@JsonKey(name: 'original_language', defaultValue: '') String get originalLanguage;@JsonKey(name: 'original_title', defaultValue: '') String get originalTitle;@JsonKey(name: 'overview', defaultValue: '') String get overview;@JsonKey(name: 'popularity', defaultValue: 0) num get popularity;@JsonKey(name: 'poster_path', defaultValue: '') String get posterPath;@JsonKey(name: 'release_date', defaultValue: '') String get releaseDate;@JsonKey(name: 'title', defaultValue: '') String get title;@JsonKey(name: 'video', defaultValue: false) bool get video;@JsonKey(name: 'vote_average', defaultValue: 0) num get voteAverage;@JsonKey(name: 'vote_count', defaultValue: 0) num get voteCount;
/// Create a copy of MovieDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDtoCopyWith<MovieDto> get copyWith => _$MovieDtoCopyWithImpl<MovieDto>(this as MovieDto, _$identity);

  /// Serializes this MovieDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDto&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(genreIds),id,originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,title,video,voteAverage,voteCount);

@override
String toString() {
  return 'MovieDto(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class $MovieDtoCopyWith<$Res>  {
  factory $MovieDtoCopyWith(MovieDto value, $Res Function(MovieDto) _then) = _$MovieDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'adult', defaultValue: false) bool adult,@JsonKey(name: 'backdrop_path', defaultValue: '') String backdropPath,@JsonKey(name: 'genre_ids', defaultValue: <num>[]) List<num> genreIds,@JsonKey(name: 'id', defaultValue: 0) num id,@JsonKey(name: 'original_language', defaultValue: '') String originalLanguage,@JsonKey(name: 'original_title', defaultValue: '') String originalTitle,@JsonKey(name: 'overview', defaultValue: '') String overview,@JsonKey(name: 'popularity', defaultValue: 0) num popularity,@JsonKey(name: 'poster_path', defaultValue: '') String posterPath,@JsonKey(name: 'release_date', defaultValue: '') String releaseDate,@JsonKey(name: 'title', defaultValue: '') String title,@JsonKey(name: 'video', defaultValue: false) bool video,@JsonKey(name: 'vote_average', defaultValue: 0) num voteAverage,@JsonKey(name: 'vote_count', defaultValue: 0) num voteCount
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
@pragma('vm:prefer-inline') @override $Res call({Object? adult = null,Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? originalTitle = null,Object? overview = null,Object? popularity = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,Object? video = null,Object? voteAverage = null,Object? voteCount = null,}) {
  return _then(_self.copyWith(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<num>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as num,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as num,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as num,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as num,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'adult', defaultValue: false)  bool adult, @JsonKey(name: 'backdrop_path', defaultValue: '')  String backdropPath, @JsonKey(name: 'genre_ids', defaultValue: <num>[])  List<num> genreIds, @JsonKey(name: 'id', defaultValue: 0)  num id, @JsonKey(name: 'original_language', defaultValue: '')  String originalLanguage, @JsonKey(name: 'original_title', defaultValue: '')  String originalTitle, @JsonKey(name: 'overview', defaultValue: '')  String overview, @JsonKey(name: 'popularity', defaultValue: 0)  num popularity, @JsonKey(name: 'poster_path', defaultValue: '')  String posterPath, @JsonKey(name: 'release_date', defaultValue: '')  String releaseDate, @JsonKey(name: 'title', defaultValue: '')  String title, @JsonKey(name: 'video', defaultValue: false)  bool video, @JsonKey(name: 'vote_average', defaultValue: 0)  num voteAverage, @JsonKey(name: 'vote_count', defaultValue: 0)  num voteCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDto() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.title,_that.video,_that.voteAverage,_that.voteCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'adult', defaultValue: false)  bool adult, @JsonKey(name: 'backdrop_path', defaultValue: '')  String backdropPath, @JsonKey(name: 'genre_ids', defaultValue: <num>[])  List<num> genreIds, @JsonKey(name: 'id', defaultValue: 0)  num id, @JsonKey(name: 'original_language', defaultValue: '')  String originalLanguage, @JsonKey(name: 'original_title', defaultValue: '')  String originalTitle, @JsonKey(name: 'overview', defaultValue: '')  String overview, @JsonKey(name: 'popularity', defaultValue: 0)  num popularity, @JsonKey(name: 'poster_path', defaultValue: '')  String posterPath, @JsonKey(name: 'release_date', defaultValue: '')  String releaseDate, @JsonKey(name: 'title', defaultValue: '')  String title, @JsonKey(name: 'video', defaultValue: false)  bool video, @JsonKey(name: 'vote_average', defaultValue: 0)  num voteAverage, @JsonKey(name: 'vote_count', defaultValue: 0)  num voteCount)  $default,) {final _that = this;
switch (_that) {
case _MovieDto():
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.title,_that.video,_that.voteAverage,_that.voteCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'adult', defaultValue: false)  bool adult, @JsonKey(name: 'backdrop_path', defaultValue: '')  String backdropPath, @JsonKey(name: 'genre_ids', defaultValue: <num>[])  List<num> genreIds, @JsonKey(name: 'id', defaultValue: 0)  num id, @JsonKey(name: 'original_language', defaultValue: '')  String originalLanguage, @JsonKey(name: 'original_title', defaultValue: '')  String originalTitle, @JsonKey(name: 'overview', defaultValue: '')  String overview, @JsonKey(name: 'popularity', defaultValue: 0)  num popularity, @JsonKey(name: 'poster_path', defaultValue: '')  String posterPath, @JsonKey(name: 'release_date', defaultValue: '')  String releaseDate, @JsonKey(name: 'title', defaultValue: '')  String title, @JsonKey(name: 'video', defaultValue: false)  bool video, @JsonKey(name: 'vote_average', defaultValue: 0)  num voteAverage, @JsonKey(name: 'vote_count', defaultValue: 0)  num voteCount)?  $default,) {final _that = this;
switch (_that) {
case _MovieDto() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.title,_that.video,_that.voteAverage,_that.voteCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieDto extends MovieDto {
  const _MovieDto({@JsonKey(name: 'adult', defaultValue: false) required this.adult, @JsonKey(name: 'backdrop_path', defaultValue: '') required this.backdropPath, @JsonKey(name: 'genre_ids', defaultValue: <num>[]) required final  List<num> genreIds, @JsonKey(name: 'id', defaultValue: 0) required this.id, @JsonKey(name: 'original_language', defaultValue: '') required this.originalLanguage, @JsonKey(name: 'original_title', defaultValue: '') required this.originalTitle, @JsonKey(name: 'overview', defaultValue: '') required this.overview, @JsonKey(name: 'popularity', defaultValue: 0) required this.popularity, @JsonKey(name: 'poster_path', defaultValue: '') required this.posterPath, @JsonKey(name: 'release_date', defaultValue: '') required this.releaseDate, @JsonKey(name: 'title', defaultValue: '') required this.title, @JsonKey(name: 'video', defaultValue: false) required this.video, @JsonKey(name: 'vote_average', defaultValue: 0) required this.voteAverage, @JsonKey(name: 'vote_count', defaultValue: 0) required this.voteCount}): _genreIds = genreIds,super._();
  factory _MovieDto.fromJson(Map<String, dynamic> json) => _$MovieDtoFromJson(json);

@override@JsonKey(name: 'adult', defaultValue: false) final  bool adult;
@override@JsonKey(name: 'backdrop_path', defaultValue: '') final  String backdropPath;
 final  List<num> _genreIds;
@override@JsonKey(name: 'genre_ids', defaultValue: <num>[]) List<num> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}

@override@JsonKey(name: 'id', defaultValue: 0) final  num id;
@override@JsonKey(name: 'original_language', defaultValue: '') final  String originalLanguage;
@override@JsonKey(name: 'original_title', defaultValue: '') final  String originalTitle;
@override@JsonKey(name: 'overview', defaultValue: '') final  String overview;
@override@JsonKey(name: 'popularity', defaultValue: 0) final  num popularity;
@override@JsonKey(name: 'poster_path', defaultValue: '') final  String posterPath;
@override@JsonKey(name: 'release_date', defaultValue: '') final  String releaseDate;
@override@JsonKey(name: 'title', defaultValue: '') final  String title;
@override@JsonKey(name: 'video', defaultValue: false) final  bool video;
@override@JsonKey(name: 'vote_average', defaultValue: 0) final  num voteAverage;
@override@JsonKey(name: 'vote_count', defaultValue: 0) final  num voteCount;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDto&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(_genreIds),id,originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,title,video,voteAverage,voteCount);

@override
String toString() {
  return 'MovieDto(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class _$MovieDtoCopyWith<$Res> implements $MovieDtoCopyWith<$Res> {
  factory _$MovieDtoCopyWith(_MovieDto value, $Res Function(_MovieDto) _then) = __$MovieDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'adult', defaultValue: false) bool adult,@JsonKey(name: 'backdrop_path', defaultValue: '') String backdropPath,@JsonKey(name: 'genre_ids', defaultValue: <num>[]) List<num> genreIds,@JsonKey(name: 'id', defaultValue: 0) num id,@JsonKey(name: 'original_language', defaultValue: '') String originalLanguage,@JsonKey(name: 'original_title', defaultValue: '') String originalTitle,@JsonKey(name: 'overview', defaultValue: '') String overview,@JsonKey(name: 'popularity', defaultValue: 0) num popularity,@JsonKey(name: 'poster_path', defaultValue: '') String posterPath,@JsonKey(name: 'release_date', defaultValue: '') String releaseDate,@JsonKey(name: 'title', defaultValue: '') String title,@JsonKey(name: 'video', defaultValue: false) bool video,@JsonKey(name: 'vote_average', defaultValue: 0) num voteAverage,@JsonKey(name: 'vote_count', defaultValue: 0) num voteCount
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
@override @pragma('vm:prefer-inline') $Res call({Object? adult = null,Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? originalTitle = null,Object? overview = null,Object? popularity = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,Object? video = null,Object? voteAverage = null,Object? voteCount = null,}) {
  return _then(_MovieDto(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<num>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as num,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as num,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as num,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
