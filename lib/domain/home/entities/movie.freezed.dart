// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Movie {

 bool get adult; StringValue get backdropPath; List<num> get genreIds; num get id; StringValue get originalLanguage; StringValue get originalTitle; StringValue get overview; num get popularity; StringValue get posterPath; StringValue get releaseDate; StringValue get title; bool get video; num get voteAverage; num get voteCount;
/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCopyWith<Movie> get copyWith => _$MovieCopyWithImpl<Movie>(this as Movie, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Movie&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}


@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(genreIds),id,originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,title,video,voteAverage,voteCount);

@override
String toString() {
  return 'Movie(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class $MovieCopyWith<$Res>  {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) _then) = _$MovieCopyWithImpl;
@useResult
$Res call({
 bool adult, StringValue backdropPath, List<num> genreIds, num id, StringValue originalLanguage, StringValue originalTitle, StringValue overview, num popularity, StringValue posterPath, StringValue releaseDate, StringValue title, bool video, num voteAverage, num voteCount
});




}
/// @nodoc
class _$MovieCopyWithImpl<$Res>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._self, this._then);

  final Movie _self;
  final $Res Function(Movie) _then;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = null,Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? originalTitle = null,Object? overview = null,Object? popularity = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,Object? video = null,Object? voteAverage = null,Object? voteCount = null,}) {
  return _then(_self.copyWith(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as StringValue,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<num>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as num,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as StringValue,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as StringValue,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as StringValue,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as num,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as StringValue,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as StringValue,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as StringValue,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as num,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [Movie].
extension MoviePatterns on Movie {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Movie value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Movie() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Movie value)  $default,){
final _that = this;
switch (_that) {
case _Movie():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Movie value)?  $default,){
final _that = this;
switch (_that) {
case _Movie() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool adult,  StringValue backdropPath,  List<num> genreIds,  num id,  StringValue originalLanguage,  StringValue originalTitle,  StringValue overview,  num popularity,  StringValue posterPath,  StringValue releaseDate,  StringValue title,  bool video,  num voteAverage,  num voteCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool adult,  StringValue backdropPath,  List<num> genreIds,  num id,  StringValue originalLanguage,  StringValue originalTitle,  StringValue overview,  num popularity,  StringValue posterPath,  StringValue releaseDate,  StringValue title,  bool video,  num voteAverage,  num voteCount)  $default,) {final _that = this;
switch (_that) {
case _Movie():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool adult,  StringValue backdropPath,  List<num> genreIds,  num id,  StringValue originalLanguage,  StringValue originalTitle,  StringValue overview,  num popularity,  StringValue posterPath,  StringValue releaseDate,  StringValue title,  bool video,  num voteAverage,  num voteCount)?  $default,) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.releaseDate,_that.title,_that.video,_that.voteAverage,_that.voteCount);case _:
  return null;

}
}

}

/// @nodoc


class _Movie extends Movie {
  const _Movie({required this.adult, required this.backdropPath, required final  List<num> genreIds, required this.id, required this.originalLanguage, required this.originalTitle, required this.overview, required this.popularity, required this.posterPath, required this.releaseDate, required this.title, required this.video, required this.voteAverage, required this.voteCount}): _genreIds = genreIds,super._();
  

@override final  bool adult;
@override final  StringValue backdropPath;
 final  List<num> _genreIds;
@override List<num> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}

@override final  num id;
@override final  StringValue originalLanguage;
@override final  StringValue originalTitle;
@override final  StringValue overview;
@override final  num popularity;
@override final  StringValue posterPath;
@override final  StringValue releaseDate;
@override final  StringValue title;
@override final  bool video;
@override final  num voteAverage;
@override final  num voteCount;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCopyWith<_Movie> get copyWith => __$MovieCopyWithImpl<_Movie>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Movie&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}


@override
int get hashCode => Object.hash(runtimeType,adult,backdropPath,const DeepCollectionEquality().hash(_genreIds),id,originalLanguage,originalTitle,overview,popularity,posterPath,releaseDate,title,video,voteAverage,voteCount);

@override
String toString() {
  return 'Movie(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) _then) = __$MovieCopyWithImpl;
@override @useResult
$Res call({
 bool adult, StringValue backdropPath, List<num> genreIds, num id, StringValue originalLanguage, StringValue originalTitle, StringValue overview, num popularity, StringValue posterPath, StringValue releaseDate, StringValue title, bool video, num voteAverage, num voteCount
});




}
/// @nodoc
class __$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(this._self, this._then);

  final _Movie _self;
  final $Res Function(_Movie) _then;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = null,Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? originalTitle = null,Object? overview = null,Object? popularity = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,Object? video = null,Object? voteAverage = null,Object? voteCount = null,}) {
  return _then(_Movie(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as StringValue,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<num>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as num,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as StringValue,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as StringValue,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as StringValue,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as num,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as StringValue,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as StringValue,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as StringValue,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as num,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
