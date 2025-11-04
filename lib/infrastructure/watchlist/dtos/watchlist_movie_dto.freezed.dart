// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watchlist_movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WatchlistMovieDto {

@HiveField(1)@JsonKey(name: 'backdrop_path', defaultValue: '') String get backdropPath;@HiveField(2)@JsonKey(name: 'genre_ids', defaultValue: <num>[]) List<num> get genreIds;@HiveField(3)@JsonKey(name: 'id', defaultValue: 0) num get id;@HiveField(4)@JsonKey(name: 'original_language', defaultValue: '') String get originalLanguage;@HiveField(5)@JsonKey(name: 'overview', defaultValue: '') String get overview;@HiveField(6)@JsonKey(name: 'poster_path', defaultValue: '') String get posterPath;@HiveField(7)@JsonKey(name: 'release_date', defaultValue: '') String get releaseDate;@HiveField(8)@JsonKey(name: 'title', defaultValue: '') String get title;
/// Create a copy of WatchlistMovieDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchlistMovieDtoCopyWith<WatchlistMovieDto> get copyWith => _$WatchlistMovieDtoCopyWithImpl<WatchlistMovieDto>(this as WatchlistMovieDto, _$identity);

  /// Serializes this WatchlistMovieDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchlistMovieDto&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backdropPath,const DeepCollectionEquality().hash(genreIds),id,originalLanguage,overview,posterPath,releaseDate,title);

@override
String toString() {
  return 'WatchlistMovieDto(backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, title: $title)';
}


}

/// @nodoc
abstract mixin class $WatchlistMovieDtoCopyWith<$Res>  {
  factory $WatchlistMovieDtoCopyWith(WatchlistMovieDto value, $Res Function(WatchlistMovieDto) _then) = _$WatchlistMovieDtoCopyWithImpl;
@useResult
$Res call({
@HiveField(1)@JsonKey(name: 'backdrop_path', defaultValue: '') String backdropPath,@HiveField(2)@JsonKey(name: 'genre_ids', defaultValue: <num>[]) List<num> genreIds,@HiveField(3)@JsonKey(name: 'id', defaultValue: 0) num id,@HiveField(4)@JsonKey(name: 'original_language', defaultValue: '') String originalLanguage,@HiveField(5)@JsonKey(name: 'overview', defaultValue: '') String overview,@HiveField(6)@JsonKey(name: 'poster_path', defaultValue: '') String posterPath,@HiveField(7)@JsonKey(name: 'release_date', defaultValue: '') String releaseDate,@HiveField(8)@JsonKey(name: 'title', defaultValue: '') String title
});




}
/// @nodoc
class _$WatchlistMovieDtoCopyWithImpl<$Res>
    implements $WatchlistMovieDtoCopyWith<$Res> {
  _$WatchlistMovieDtoCopyWithImpl(this._self, this._then);

  final WatchlistMovieDto _self;
  final $Res Function(WatchlistMovieDto) _then;

/// Create a copy of WatchlistMovieDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? overview = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,}) {
  return _then(_self.copyWith(
backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<num>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as num,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WatchlistMovieDto].
extension WatchlistMovieDtoPatterns on WatchlistMovieDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WatchlistMovieDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WatchlistMovieDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WatchlistMovieDto value)  $default,){
final _that = this;
switch (_that) {
case _WatchlistMovieDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WatchlistMovieDto value)?  $default,){
final _that = this;
switch (_that) {
case _WatchlistMovieDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(1)@JsonKey(name: 'backdrop_path', defaultValue: '')  String backdropPath, @HiveField(2)@JsonKey(name: 'genre_ids', defaultValue: <num>[])  List<num> genreIds, @HiveField(3)@JsonKey(name: 'id', defaultValue: 0)  num id, @HiveField(4)@JsonKey(name: 'original_language', defaultValue: '')  String originalLanguage, @HiveField(5)@JsonKey(name: 'overview', defaultValue: '')  String overview, @HiveField(6)@JsonKey(name: 'poster_path', defaultValue: '')  String posterPath, @HiveField(7)@JsonKey(name: 'release_date', defaultValue: '')  String releaseDate, @HiveField(8)@JsonKey(name: 'title', defaultValue: '')  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WatchlistMovieDto() when $default != null:
return $default(_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.overview,_that.posterPath,_that.releaseDate,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(1)@JsonKey(name: 'backdrop_path', defaultValue: '')  String backdropPath, @HiveField(2)@JsonKey(name: 'genre_ids', defaultValue: <num>[])  List<num> genreIds, @HiveField(3)@JsonKey(name: 'id', defaultValue: 0)  num id, @HiveField(4)@JsonKey(name: 'original_language', defaultValue: '')  String originalLanguage, @HiveField(5)@JsonKey(name: 'overview', defaultValue: '')  String overview, @HiveField(6)@JsonKey(name: 'poster_path', defaultValue: '')  String posterPath, @HiveField(7)@JsonKey(name: 'release_date', defaultValue: '')  String releaseDate, @HiveField(8)@JsonKey(name: 'title', defaultValue: '')  String title)  $default,) {final _that = this;
switch (_that) {
case _WatchlistMovieDto():
return $default(_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.overview,_that.posterPath,_that.releaseDate,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(1)@JsonKey(name: 'backdrop_path', defaultValue: '')  String backdropPath, @HiveField(2)@JsonKey(name: 'genre_ids', defaultValue: <num>[])  List<num> genreIds, @HiveField(3)@JsonKey(name: 'id', defaultValue: 0)  num id, @HiveField(4)@JsonKey(name: 'original_language', defaultValue: '')  String originalLanguage, @HiveField(5)@JsonKey(name: 'overview', defaultValue: '')  String overview, @HiveField(6)@JsonKey(name: 'poster_path', defaultValue: '')  String posterPath, @HiveField(7)@JsonKey(name: 'release_date', defaultValue: '')  String releaseDate, @HiveField(8)@JsonKey(name: 'title', defaultValue: '')  String title)?  $default,) {final _that = this;
switch (_that) {
case _WatchlistMovieDto() when $default != null:
return $default(_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.overview,_that.posterPath,_that.releaseDate,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WatchlistMovieDto extends WatchlistMovieDto {
  const _WatchlistMovieDto({@HiveField(1)@JsonKey(name: 'backdrop_path', defaultValue: '') required this.backdropPath, @HiveField(2)@JsonKey(name: 'genre_ids', defaultValue: <num>[]) required final  List<num> genreIds, @HiveField(3)@JsonKey(name: 'id', defaultValue: 0) required this.id, @HiveField(4)@JsonKey(name: 'original_language', defaultValue: '') required this.originalLanguage, @HiveField(5)@JsonKey(name: 'overview', defaultValue: '') required this.overview, @HiveField(6)@JsonKey(name: 'poster_path', defaultValue: '') required this.posterPath, @HiveField(7)@JsonKey(name: 'release_date', defaultValue: '') required this.releaseDate, @HiveField(8)@JsonKey(name: 'title', defaultValue: '') required this.title}): _genreIds = genreIds,super._();
  factory _WatchlistMovieDto.fromJson(Map<String, dynamic> json) => _$WatchlistMovieDtoFromJson(json);

@override@HiveField(1)@JsonKey(name: 'backdrop_path', defaultValue: '') final  String backdropPath;
 final  List<num> _genreIds;
@override@HiveField(2)@JsonKey(name: 'genre_ids', defaultValue: <num>[]) List<num> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}

@override@HiveField(3)@JsonKey(name: 'id', defaultValue: 0) final  num id;
@override@HiveField(4)@JsonKey(name: 'original_language', defaultValue: '') final  String originalLanguage;
@override@HiveField(5)@JsonKey(name: 'overview', defaultValue: '') final  String overview;
@override@HiveField(6)@JsonKey(name: 'poster_path', defaultValue: '') final  String posterPath;
@override@HiveField(7)@JsonKey(name: 'release_date', defaultValue: '') final  String releaseDate;
@override@HiveField(8)@JsonKey(name: 'title', defaultValue: '') final  String title;

/// Create a copy of WatchlistMovieDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WatchlistMovieDtoCopyWith<_WatchlistMovieDto> get copyWith => __$WatchlistMovieDtoCopyWithImpl<_WatchlistMovieDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WatchlistMovieDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WatchlistMovieDto&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backdropPath,const DeepCollectionEquality().hash(_genreIds),id,originalLanguage,overview,posterPath,releaseDate,title);

@override
String toString() {
  return 'WatchlistMovieDto(backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, title: $title)';
}


}

/// @nodoc
abstract mixin class _$WatchlistMovieDtoCopyWith<$Res> implements $WatchlistMovieDtoCopyWith<$Res> {
  factory _$WatchlistMovieDtoCopyWith(_WatchlistMovieDto value, $Res Function(_WatchlistMovieDto) _then) = __$WatchlistMovieDtoCopyWithImpl;
@override @useResult
$Res call({
@HiveField(1)@JsonKey(name: 'backdrop_path', defaultValue: '') String backdropPath,@HiveField(2)@JsonKey(name: 'genre_ids', defaultValue: <num>[]) List<num> genreIds,@HiveField(3)@JsonKey(name: 'id', defaultValue: 0) num id,@HiveField(4)@JsonKey(name: 'original_language', defaultValue: '') String originalLanguage,@HiveField(5)@JsonKey(name: 'overview', defaultValue: '') String overview,@HiveField(6)@JsonKey(name: 'poster_path', defaultValue: '') String posterPath,@HiveField(7)@JsonKey(name: 'release_date', defaultValue: '') String releaseDate,@HiveField(8)@JsonKey(name: 'title', defaultValue: '') String title
});




}
/// @nodoc
class __$WatchlistMovieDtoCopyWithImpl<$Res>
    implements _$WatchlistMovieDtoCopyWith<$Res> {
  __$WatchlistMovieDtoCopyWithImpl(this._self, this._then);

  final _WatchlistMovieDto _self;
  final $Res Function(_WatchlistMovieDto) _then;

/// Create a copy of WatchlistMovieDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? overview = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,}) {
  return _then(_WatchlistMovieDto(
backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<num>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as num,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
