// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MoviesData {

 List<Movie> get results;
/// Create a copy of MoviesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoviesDataCopyWith<MoviesData> get copyWith => _$MoviesDataCopyWithImpl<MoviesData>(this as MoviesData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoviesData&&const DeepCollectionEquality().equals(other.results, results));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'MoviesData(results: $results)';
}


}

/// @nodoc
abstract mixin class $MoviesDataCopyWith<$Res>  {
  factory $MoviesDataCopyWith(MoviesData value, $Res Function(MoviesData) _then) = _$MoviesDataCopyWithImpl;
@useResult
$Res call({
 List<Movie> results
});




}
/// @nodoc
class _$MoviesDataCopyWithImpl<$Res>
    implements $MoviesDataCopyWith<$Res> {
  _$MoviesDataCopyWithImpl(this._self, this._then);

  final MoviesData _self;
  final $Res Function(MoviesData) _then;

/// Create a copy of MoviesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Movie>,
  ));
}

}


/// Adds pattern-matching-related methods to [MoviesData].
extension MoviesDataPatterns on MoviesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoviesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoviesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoviesData value)  $default,){
final _that = this;
switch (_that) {
case _MoviesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoviesData value)?  $default,){
final _that = this;
switch (_that) {
case _MoviesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Movie> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoviesData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Movie> results)  $default,) {final _that = this;
switch (_that) {
case _MoviesData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Movie> results)?  $default,) {final _that = this;
switch (_that) {
case _MoviesData() when $default != null:
return $default(_that.results);case _:
  return null;

}
}

}

/// @nodoc


class _MoviesData extends MoviesData {
  const _MoviesData({required final  List<Movie> results}): _results = results,super._();
  

 final  List<Movie> _results;
@override List<Movie> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of MoviesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoviesDataCopyWith<_MoviesData> get copyWith => __$MoviesDataCopyWithImpl<_MoviesData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoviesData&&const DeepCollectionEquality().equals(other._results, _results));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'MoviesData(results: $results)';
}


}

/// @nodoc
abstract mixin class _$MoviesDataCopyWith<$Res> implements $MoviesDataCopyWith<$Res> {
  factory _$MoviesDataCopyWith(_MoviesData value, $Res Function(_MoviesData) _then) = __$MoviesDataCopyWithImpl;
@override @useResult
$Res call({
 List<Movie> results
});




}
/// @nodoc
class __$MoviesDataCopyWithImpl<$Res>
    implements _$MoviesDataCopyWith<$Res> {
  __$MoviesDataCopyWithImpl(this._self, this._then);

  final _MoviesData _self;
  final $Res Function(_MoviesData) _then;

/// Create a copy of MoviesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_MoviesData(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Movie>,
  ));
}


}

/// @nodoc
mixin _$Movie {

 StringValue get backdropPath; List<int> get genreIds; int get id; StringValue get originalLanguage; StringValue get overview; StringValue get posterPath; DateTimeValue get releaseDate; StringValue get title;
/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCopyWith<Movie> get copyWith => _$MovieCopyWithImpl<Movie>(this as Movie, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Movie&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,backdropPath,const DeepCollectionEquality().hash(genreIds),id,originalLanguage,overview,posterPath,releaseDate,title);

@override
String toString() {
  return 'Movie(backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, title: $title)';
}


}

/// @nodoc
abstract mixin class $MovieCopyWith<$Res>  {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) _then) = _$MovieCopyWithImpl;
@useResult
$Res call({
 StringValue backdropPath, List<int> genreIds, int id, StringValue originalLanguage, StringValue overview, StringValue posterPath, DateTimeValue releaseDate, StringValue title
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
@pragma('vm:prefer-inline') @override $Res call({Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? overview = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,}) {
  return _then(_self.copyWith(
backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as StringValue,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as StringValue,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as StringValue,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as StringValue,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTimeValue,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as StringValue,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StringValue backdropPath,  List<int> genreIds,  int id,  StringValue originalLanguage,  StringValue overview,  StringValue posterPath,  DateTimeValue releaseDate,  StringValue title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StringValue backdropPath,  List<int> genreIds,  int id,  StringValue originalLanguage,  StringValue overview,  StringValue posterPath,  DateTimeValue releaseDate,  StringValue title)  $default,) {final _that = this;
switch (_that) {
case _Movie():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StringValue backdropPath,  List<int> genreIds,  int id,  StringValue originalLanguage,  StringValue overview,  StringValue posterPath,  DateTimeValue releaseDate,  StringValue title)?  $default,) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that.backdropPath,_that.genreIds,_that.id,_that.originalLanguage,_that.overview,_that.posterPath,_that.releaseDate,_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _Movie extends Movie {
  const _Movie({required this.backdropPath, required final  List<int> genreIds, required this.id, required this.originalLanguage, required this.overview, required this.posterPath, required this.releaseDate, required this.title}): _genreIds = genreIds,super._();
  

@override final  StringValue backdropPath;
 final  List<int> _genreIds;
@override List<int> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}

@override final  int id;
@override final  StringValue originalLanguage;
@override final  StringValue overview;
@override final  StringValue posterPath;
@override final  DateTimeValue releaseDate;
@override final  StringValue title;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCopyWith<_Movie> get copyWith => __$MovieCopyWithImpl<_Movie>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Movie&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&(identical(other.id, id) || other.id == id)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,backdropPath,const DeepCollectionEquality().hash(_genreIds),id,originalLanguage,overview,posterPath,releaseDate,title);

@override
String toString() {
  return 'Movie(backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, overview: $overview, posterPath: $posterPath, releaseDate: $releaseDate, title: $title)';
}


}

/// @nodoc
abstract mixin class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) _then) = __$MovieCopyWithImpl;
@override @useResult
$Res call({
 StringValue backdropPath, List<int> genreIds, int id, StringValue originalLanguage, StringValue overview, StringValue posterPath, DateTimeValue releaseDate, StringValue title
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
@override @pragma('vm:prefer-inline') $Res call({Object? backdropPath = null,Object? genreIds = null,Object? id = null,Object? originalLanguage = null,Object? overview = null,Object? posterPath = null,Object? releaseDate = null,Object? title = null,}) {
  return _then(_Movie(
backdropPath: null == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as StringValue,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,originalLanguage: null == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as StringValue,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as StringValue,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as StringValue,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTimeValue,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as StringValue,
  ));
}


}

// dart format on
