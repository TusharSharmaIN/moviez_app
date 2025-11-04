// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watchlist_movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WatchlistMovie {

 StringValue get backdropPath; List<num> get genreIds; num get id; StringValue get originalLanguage; StringValue get overview; StringValue get posterPath; DateTimeValue get releaseDate; StringValue get title;
/// Create a copy of WatchlistMovie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchlistMovieCopyWith<WatchlistMovie> get copyWith => _$WatchlistMovieCopyWithImpl<WatchlistMovie>(this as WatchlistMovie, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchlistMovie&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,backdropPath,const DeepCollectionEquality().hash(genreIds),id,originalLanguage,overview,posterPath,releaseDate,title);

@override
String toString() {
  return 'WatchlistMovie(backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, title: $title)';
}


}

/// @nodoc
abstract mixin class $WatchlistMovieCopyWith<$Res>  {
  factory $WatchlistMovieCopyWith(WatchlistMovie value, $Res Function(WatchlistMovie) _then) = _$WatchlistMovieCopyWithImpl;
@useResult
$Res call({
 StringValue backdropPath, List<num> genreIds, num id, StringValue originalLanguage, StringValue overview, StringValue posterPath, DateTimeValue releaseDate, StringValue title
});




}
/// @nodoc
class _$WatchlistMovieCopyWithImpl<$Res>
    implements $WatchlistMovieCopyWith<$Res> {
  _$WatchlistMovieCopyWithImpl(this._self, this._then);

  final WatchlistMovie _self;
  final $Res Function(WatchlistMovie) _then;

/// Create a copy of WatchlistMovie
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? overview = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,}) {
  return _then(_self.copyWith(
backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as StringValue,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<num>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as num,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as StringValue,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as StringValue,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as StringValue,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTimeValue,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as StringValue,
  ));
}

}


/// Adds pattern-matching-related methods to [WatchlistMovie].
extension WatchlistMoviePatterns on WatchlistMovie {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WatchlistMovie value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WatchlistMovie() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WatchlistMovie value)  $default,){
final _that = this;
switch (_that) {
case _WatchlistMovie():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WatchlistMovie value)?  $default,){
final _that = this;
switch (_that) {
case _WatchlistMovie() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StringValue backdropPath,  List<num> genreIds,  num id,  StringValue originalLanguage,  StringValue overview,  StringValue posterPath,  DateTimeValue releaseDate,  StringValue title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WatchlistMovie() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StringValue backdropPath,  List<num> genreIds,  num id,  StringValue originalLanguage,  StringValue overview,  StringValue posterPath,  DateTimeValue releaseDate,  StringValue title)  $default,) {final _that = this;
switch (_that) {
case _WatchlistMovie():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StringValue backdropPath,  List<num> genreIds,  num id,  StringValue originalLanguage,  StringValue overview,  StringValue posterPath,  DateTimeValue releaseDate,  StringValue title)?  $default,) {final _that = this;
switch (_that) {
case _WatchlistMovie() when $default != null:
return $default(_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.overview,_that.posterPath,_that.releaseDate,_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _WatchlistMovie extends WatchlistMovie {
  const _WatchlistMovie({required this.backdropPath, required final  List<num> genreIds, required this.id, required this.originalLanguage, required this.overview, required this.posterPath, required this.releaseDate, required this.title}): _genreIds = genreIds,super._();
  

@override final  StringValue backdropPath;
 final  List<num> _genreIds;
@override List<num> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}

@override final  num id;
@override final  StringValue originalLanguage;
@override final  StringValue overview;
@override final  StringValue posterPath;
@override final  DateTimeValue releaseDate;
@override final  StringValue title;

/// Create a copy of WatchlistMovie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WatchlistMovieCopyWith<_WatchlistMovie> get copyWith => __$WatchlistMovieCopyWithImpl<_WatchlistMovie>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WatchlistMovie&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,backdropPath,const DeepCollectionEquality().hash(_genreIds),id,originalLanguage,overview,posterPath,releaseDate,title);

@override
String toString() {
  return 'WatchlistMovie(backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, title: $title)';
}


}

/// @nodoc
abstract mixin class _$WatchlistMovieCopyWith<$Res> implements $WatchlistMovieCopyWith<$Res> {
  factory _$WatchlistMovieCopyWith(_WatchlistMovie value, $Res Function(_WatchlistMovie) _then) = __$WatchlistMovieCopyWithImpl;
@override @useResult
$Res call({
 StringValue backdropPath, List<num> genreIds, num id, StringValue originalLanguage, StringValue overview, StringValue posterPath, DateTimeValue releaseDate, StringValue title
});




}
/// @nodoc
class __$WatchlistMovieCopyWithImpl<$Res>
    implements _$WatchlistMovieCopyWith<$Res> {
  __$WatchlistMovieCopyWithImpl(this._self, this._then);

  final _WatchlistMovie _self;
  final $Res Function(_WatchlistMovie) _then;

/// Create a copy of WatchlistMovie
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? overview = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,}) {
  return _then(_WatchlistMovie(
backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as StringValue,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<num>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as num,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as StringValue,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as StringValue,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as StringValue,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTimeValue,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as StringValue,
  ));
}


}

// dart format on
