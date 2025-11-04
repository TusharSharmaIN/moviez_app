// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieDetailsEvent()';
}


}

/// @nodoc
class $MovieDetailsEventCopyWith<$Res>  {
$MovieDetailsEventCopyWith(MovieDetailsEvent _, $Res Function(MovieDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [MovieDetailsEvent].
extension MovieDetailsEventPatterns on MovieDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _SetMovieId value)?  setMovieId,TResult Function( _LoadMovieDetails value)?  loadMovieDetails,TResult Function( _LoadTrailerDetails value)?  loadTrailerDetails,TResult Function( _LoadCastDetails value)?  loadCastDetails,TResult Function( _AddToWatchlist value)?  addToWatchlist,TResult Function( _RemoveFromWatchlist value)?  removeFromWatchlist,TResult Function( _CheckIfMovieIsWatchlisted value)?  checkIfMovieIsWatchlisted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _SetMovieId() when setMovieId != null:
return setMovieId(_that);case _LoadMovieDetails() when loadMovieDetails != null:
return loadMovieDetails(_that);case _LoadTrailerDetails() when loadTrailerDetails != null:
return loadTrailerDetails(_that);case _LoadCastDetails() when loadCastDetails != null:
return loadCastDetails(_that);case _AddToWatchlist() when addToWatchlist != null:
return addToWatchlist(_that);case _RemoveFromWatchlist() when removeFromWatchlist != null:
return removeFromWatchlist(_that);case _CheckIfMovieIsWatchlisted() when checkIfMovieIsWatchlisted != null:
return checkIfMovieIsWatchlisted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _SetMovieId value)  setMovieId,required TResult Function( _LoadMovieDetails value)  loadMovieDetails,required TResult Function( _LoadTrailerDetails value)  loadTrailerDetails,required TResult Function( _LoadCastDetails value)  loadCastDetails,required TResult Function( _AddToWatchlist value)  addToWatchlist,required TResult Function( _RemoveFromWatchlist value)  removeFromWatchlist,required TResult Function( _CheckIfMovieIsWatchlisted value)  checkIfMovieIsWatchlisted,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _SetMovieId():
return setMovieId(_that);case _LoadMovieDetails():
return loadMovieDetails(_that);case _LoadTrailerDetails():
return loadTrailerDetails(_that);case _LoadCastDetails():
return loadCastDetails(_that);case _AddToWatchlist():
return addToWatchlist(_that);case _RemoveFromWatchlist():
return removeFromWatchlist(_that);case _CheckIfMovieIsWatchlisted():
return checkIfMovieIsWatchlisted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _SetMovieId value)?  setMovieId,TResult? Function( _LoadMovieDetails value)?  loadMovieDetails,TResult? Function( _LoadTrailerDetails value)?  loadTrailerDetails,TResult? Function( _LoadCastDetails value)?  loadCastDetails,TResult? Function( _AddToWatchlist value)?  addToWatchlist,TResult? Function( _RemoveFromWatchlist value)?  removeFromWatchlist,TResult? Function( _CheckIfMovieIsWatchlisted value)?  checkIfMovieIsWatchlisted,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _SetMovieId() when setMovieId != null:
return setMovieId(_that);case _LoadMovieDetails() when loadMovieDetails != null:
return loadMovieDetails(_that);case _LoadTrailerDetails() when loadTrailerDetails != null:
return loadTrailerDetails(_that);case _LoadCastDetails() when loadCastDetails != null:
return loadCastDetails(_that);case _AddToWatchlist() when addToWatchlist != null:
return addToWatchlist(_that);case _RemoveFromWatchlist() when removeFromWatchlist != null:
return removeFromWatchlist(_that);case _CheckIfMovieIsWatchlisted() when checkIfMovieIsWatchlisted != null:
return checkIfMovieIsWatchlisted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( int movieId)?  setMovieId,TResult Function()?  loadMovieDetails,TResult Function()?  loadTrailerDetails,TResult Function()?  loadCastDetails,TResult Function( Movie movie)?  addToWatchlist,TResult Function( int movieId)?  removeFromWatchlist,TResult Function( int movieId)?  checkIfMovieIsWatchlisted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _SetMovieId() when setMovieId != null:
return setMovieId(_that.movieId);case _LoadMovieDetails() when loadMovieDetails != null:
return loadMovieDetails();case _LoadTrailerDetails() when loadTrailerDetails != null:
return loadTrailerDetails();case _LoadCastDetails() when loadCastDetails != null:
return loadCastDetails();case _AddToWatchlist() when addToWatchlist != null:
return addToWatchlist(_that.movie);case _RemoveFromWatchlist() when removeFromWatchlist != null:
return removeFromWatchlist(_that.movieId);case _CheckIfMovieIsWatchlisted() when checkIfMovieIsWatchlisted != null:
return checkIfMovieIsWatchlisted(_that.movieId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( int movieId)  setMovieId,required TResult Function()  loadMovieDetails,required TResult Function()  loadTrailerDetails,required TResult Function()  loadCastDetails,required TResult Function( Movie movie)  addToWatchlist,required TResult Function( int movieId)  removeFromWatchlist,required TResult Function( int movieId)  checkIfMovieIsWatchlisted,}) {final _that = this;
switch (_that) {
case _Init():
return init();case _SetMovieId():
return setMovieId(_that.movieId);case _LoadMovieDetails():
return loadMovieDetails();case _LoadTrailerDetails():
return loadTrailerDetails();case _LoadCastDetails():
return loadCastDetails();case _AddToWatchlist():
return addToWatchlist(_that.movie);case _RemoveFromWatchlist():
return removeFromWatchlist(_that.movieId);case _CheckIfMovieIsWatchlisted():
return checkIfMovieIsWatchlisted(_that.movieId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( int movieId)?  setMovieId,TResult? Function()?  loadMovieDetails,TResult? Function()?  loadTrailerDetails,TResult? Function()?  loadCastDetails,TResult? Function( Movie movie)?  addToWatchlist,TResult? Function( int movieId)?  removeFromWatchlist,TResult? Function( int movieId)?  checkIfMovieIsWatchlisted,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _SetMovieId() when setMovieId != null:
return setMovieId(_that.movieId);case _LoadMovieDetails() when loadMovieDetails != null:
return loadMovieDetails();case _LoadTrailerDetails() when loadTrailerDetails != null:
return loadTrailerDetails();case _LoadCastDetails() when loadCastDetails != null:
return loadCastDetails();case _AddToWatchlist() when addToWatchlist != null:
return addToWatchlist(_that.movie);case _RemoveFromWatchlist() when removeFromWatchlist != null:
return removeFromWatchlist(_that.movieId);case _CheckIfMovieIsWatchlisted() when checkIfMovieIsWatchlisted != null:
return checkIfMovieIsWatchlisted(_that.movieId);case _:
  return null;

}
}

}

/// @nodoc


class _Init implements MovieDetailsEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieDetailsEvent.init()';
}


}




/// @nodoc


class _SetMovieId implements MovieDetailsEvent {
  const _SetMovieId({required this.movieId});
  

 final  int movieId;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetMovieIdCopyWith<_SetMovieId> get copyWith => __$SetMovieIdCopyWithImpl<_SetMovieId>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetMovieId&&(identical(other.movieId, movieId) || other.movieId == movieId));
}


@override
int get hashCode => Object.hash(runtimeType,movieId);

@override
String toString() {
  return 'MovieDetailsEvent.setMovieId(movieId: $movieId)';
}


}

/// @nodoc
abstract mixin class _$SetMovieIdCopyWith<$Res> implements $MovieDetailsEventCopyWith<$Res> {
  factory _$SetMovieIdCopyWith(_SetMovieId value, $Res Function(_SetMovieId) _then) = __$SetMovieIdCopyWithImpl;
@useResult
$Res call({
 int movieId
});




}
/// @nodoc
class __$SetMovieIdCopyWithImpl<$Res>
    implements _$SetMovieIdCopyWith<$Res> {
  __$SetMovieIdCopyWithImpl(this._self, this._then);

  final _SetMovieId _self;
  final $Res Function(_SetMovieId) _then;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieId = null,}) {
  return _then(_SetMovieId(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadMovieDetails implements MovieDetailsEvent {
  const _LoadMovieDetails();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMovieDetails);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieDetailsEvent.loadMovieDetails()';
}


}




/// @nodoc


class _LoadTrailerDetails implements MovieDetailsEvent {
  const _LoadTrailerDetails();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadTrailerDetails);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieDetailsEvent.loadTrailerDetails()';
}


}




/// @nodoc


class _LoadCastDetails implements MovieDetailsEvent {
  const _LoadCastDetails();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadCastDetails);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieDetailsEvent.loadCastDetails()';
}


}




/// @nodoc


class _AddToWatchlist implements MovieDetailsEvent {
  const _AddToWatchlist({required this.movie});
  

 final  Movie movie;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddToWatchlistCopyWith<_AddToWatchlist> get copyWith => __$AddToWatchlistCopyWithImpl<_AddToWatchlist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToWatchlist&&(identical(other.movie, movie) || other.movie == movie));
}


@override
int get hashCode => Object.hash(runtimeType,movie);

@override
String toString() {
  return 'MovieDetailsEvent.addToWatchlist(movie: $movie)';
}


}

/// @nodoc
abstract mixin class _$AddToWatchlistCopyWith<$Res> implements $MovieDetailsEventCopyWith<$Res> {
  factory _$AddToWatchlistCopyWith(_AddToWatchlist value, $Res Function(_AddToWatchlist) _then) = __$AddToWatchlistCopyWithImpl;
@useResult
$Res call({
 Movie movie
});


$MovieCopyWith<$Res> get movie;

}
/// @nodoc
class __$AddToWatchlistCopyWithImpl<$Res>
    implements _$AddToWatchlistCopyWith<$Res> {
  __$AddToWatchlistCopyWithImpl(this._self, this._then);

  final _AddToWatchlist _self;
  final $Res Function(_AddToWatchlist) _then;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movie = null,}) {
  return _then(_AddToWatchlist(
movie: null == movie ? _self.movie : movie // ignore: cast_nullable_to_non_nullable
as Movie,
  ));
}

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieCopyWith<$Res> get movie {
  
  return $MovieCopyWith<$Res>(_self.movie, (value) {
    return _then(_self.copyWith(movie: value));
  });
}
}

/// @nodoc


class _RemoveFromWatchlist implements MovieDetailsEvent {
  const _RemoveFromWatchlist({required this.movieId});
  

 final  int movieId;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveFromWatchlistCopyWith<_RemoveFromWatchlist> get copyWith => __$RemoveFromWatchlistCopyWithImpl<_RemoveFromWatchlist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFromWatchlist&&(identical(other.movieId, movieId) || other.movieId == movieId));
}


@override
int get hashCode => Object.hash(runtimeType,movieId);

@override
String toString() {
  return 'MovieDetailsEvent.removeFromWatchlist(movieId: $movieId)';
}


}

/// @nodoc
abstract mixin class _$RemoveFromWatchlistCopyWith<$Res> implements $MovieDetailsEventCopyWith<$Res> {
  factory _$RemoveFromWatchlistCopyWith(_RemoveFromWatchlist value, $Res Function(_RemoveFromWatchlist) _then) = __$RemoveFromWatchlistCopyWithImpl;
@useResult
$Res call({
 int movieId
});




}
/// @nodoc
class __$RemoveFromWatchlistCopyWithImpl<$Res>
    implements _$RemoveFromWatchlistCopyWith<$Res> {
  __$RemoveFromWatchlistCopyWithImpl(this._self, this._then);

  final _RemoveFromWatchlist _self;
  final $Res Function(_RemoveFromWatchlist) _then;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieId = null,}) {
  return _then(_RemoveFromWatchlist(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CheckIfMovieIsWatchlisted implements MovieDetailsEvent {
  const _CheckIfMovieIsWatchlisted({required this.movieId});
  

 final  int movieId;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckIfMovieIsWatchlistedCopyWith<_CheckIfMovieIsWatchlisted> get copyWith => __$CheckIfMovieIsWatchlistedCopyWithImpl<_CheckIfMovieIsWatchlisted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckIfMovieIsWatchlisted&&(identical(other.movieId, movieId) || other.movieId == movieId));
}


@override
int get hashCode => Object.hash(runtimeType,movieId);

@override
String toString() {
  return 'MovieDetailsEvent.checkIfMovieIsWatchlisted(movieId: $movieId)';
}


}

/// @nodoc
abstract mixin class _$CheckIfMovieIsWatchlistedCopyWith<$Res> implements $MovieDetailsEventCopyWith<$Res> {
  factory _$CheckIfMovieIsWatchlistedCopyWith(_CheckIfMovieIsWatchlisted value, $Res Function(_CheckIfMovieIsWatchlisted) _then) = __$CheckIfMovieIsWatchlistedCopyWithImpl;
@useResult
$Res call({
 int movieId
});




}
/// @nodoc
class __$CheckIfMovieIsWatchlistedCopyWithImpl<$Res>
    implements _$CheckIfMovieIsWatchlistedCopyWith<$Res> {
  __$CheckIfMovieIsWatchlistedCopyWithImpl(this._self, this._then);

  final _CheckIfMovieIsWatchlisted _self;
  final $Res Function(_CheckIfMovieIsWatchlisted) _then;

/// Create a copy of MovieDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieId = null,}) {
  return _then(_CheckIfMovieIsWatchlisted(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MovieDetailsState {

 int get movieId; bool get isLoadingMovieDetails; MovieDetails get movieDetails; Video get trailer; List<Cast> get cast; bool get isWatchlisted; Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccess;
/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailsStateCopyWith<MovieDetailsState> get copyWith => _$MovieDetailsStateCopyWithImpl<MovieDetailsState>(this as MovieDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsState&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.isLoadingMovieDetails, isLoadingMovieDetails) || other.isLoadingMovieDetails == isLoadingMovieDetails)&&(identical(other.movieDetails, movieDetails) || other.movieDetails == movieDetails)&&(identical(other.trailer, trailer) || other.trailer == trailer)&&const DeepCollectionEquality().equals(other.cast, cast)&&(identical(other.isWatchlisted, isWatchlisted) || other.isWatchlisted == isWatchlisted)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,movieId,isLoadingMovieDetails,movieDetails,trailer,const DeepCollectionEquality().hash(cast),isWatchlisted,apiFailureOrSuccess);

@override
String toString() {
  return 'MovieDetailsState(movieId: $movieId, isLoadingMovieDetails: $isLoadingMovieDetails, movieDetails: $movieDetails, trailer: $trailer, cast: $cast, isWatchlisted: $isWatchlisted, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $MovieDetailsStateCopyWith<$Res>  {
  factory $MovieDetailsStateCopyWith(MovieDetailsState value, $Res Function(MovieDetailsState) _then) = _$MovieDetailsStateCopyWithImpl;
@useResult
$Res call({
 int movieId, bool isLoadingMovieDetails, MovieDetails movieDetails, Video trailer, List<Cast> cast, bool isWatchlisted, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});


$MovieDetailsCopyWith<$Res> get movieDetails;$VideoCopyWith<$Res> get trailer;

}
/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._self, this._then);

  final MovieDetailsState _self;
  final $Res Function(MovieDetailsState) _then;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movieId = null,Object? isLoadingMovieDetails = null,Object? movieDetails = null,Object? trailer = null,Object? cast = null,Object? isWatchlisted = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_self.copyWith(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,isLoadingMovieDetails: null == isLoadingMovieDetails ? _self.isLoadingMovieDetails : isLoadingMovieDetails // ignore: cast_nullable_to_non_nullable
as bool,movieDetails: null == movieDetails ? _self.movieDetails : movieDetails // ignore: cast_nullable_to_non_nullable
as MovieDetails,trailer: null == trailer ? _self.trailer : trailer // ignore: cast_nullable_to_non_nullable
as Video,cast: null == cast ? _self.cast : cast // ignore: cast_nullable_to_non_nullable
as List<Cast>,isWatchlisted: null == isWatchlisted ? _self.isWatchlisted : isWatchlisted // ignore: cast_nullable_to_non_nullable
as bool,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}
/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieDetailsCopyWith<$Res> get movieDetails {
  
  return $MovieDetailsCopyWith<$Res>(_self.movieDetails, (value) {
    return _then(_self.copyWith(movieDetails: value));
  });
}/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoCopyWith<$Res> get trailer {
  
  return $VideoCopyWith<$Res>(_self.trailer, (value) {
    return _then(_self.copyWith(trailer: value));
  });
}
}


/// Adds pattern-matching-related methods to [MovieDetailsState].
extension MovieDetailsStatePatterns on MovieDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int movieId,  bool isLoadingMovieDetails,  MovieDetails movieDetails,  Video trailer,  List<Cast> cast,  bool isWatchlisted,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailsState() when $default != null:
return $default(_that.movieId,_that.isLoadingMovieDetails,_that.movieDetails,_that.trailer,_that.cast,_that.isWatchlisted,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int movieId,  bool isLoadingMovieDetails,  MovieDetails movieDetails,  Video trailer,  List<Cast> cast,  bool isWatchlisted,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailsState():
return $default(_that.movieId,_that.isLoadingMovieDetails,_that.movieDetails,_that.trailer,_that.cast,_that.isWatchlisted,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int movieId,  bool isLoadingMovieDetails,  MovieDetails movieDetails,  Video trailer,  List<Cast> cast,  bool isWatchlisted,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailsState() when $default != null:
return $default(_that.movieId,_that.isLoadingMovieDetails,_that.movieDetails,_that.trailer,_that.cast,_that.isWatchlisted,_that.apiFailureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _MovieDetailsState extends MovieDetailsState {
  const _MovieDetailsState({required this.movieId, required this.isLoadingMovieDetails, required this.movieDetails, required this.trailer, required final  List<Cast> cast, required this.isWatchlisted, required this.apiFailureOrSuccess}): _cast = cast,super._();
  

@override final  int movieId;
@override final  bool isLoadingMovieDetails;
@override final  MovieDetails movieDetails;
@override final  Video trailer;
 final  List<Cast> _cast;
@override List<Cast> get cast {
  if (_cast is EqualUnmodifiableListView) return _cast;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cast);
}

@override final  bool isWatchlisted;
@override final  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailsStateCopyWith<_MovieDetailsState> get copyWith => __$MovieDetailsStateCopyWithImpl<_MovieDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailsState&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.isLoadingMovieDetails, isLoadingMovieDetails) || other.isLoadingMovieDetails == isLoadingMovieDetails)&&(identical(other.movieDetails, movieDetails) || other.movieDetails == movieDetails)&&(identical(other.trailer, trailer) || other.trailer == trailer)&&const DeepCollectionEquality().equals(other._cast, _cast)&&(identical(other.isWatchlisted, isWatchlisted) || other.isWatchlisted == isWatchlisted)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,movieId,isLoadingMovieDetails,movieDetails,trailer,const DeepCollectionEquality().hash(_cast),isWatchlisted,apiFailureOrSuccess);

@override
String toString() {
  return 'MovieDetailsState(movieId: $movieId, isLoadingMovieDetails: $isLoadingMovieDetails, movieDetails: $movieDetails, trailer: $trailer, cast: $cast, isWatchlisted: $isWatchlisted, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailsStateCopyWith<$Res> implements $MovieDetailsStateCopyWith<$Res> {
  factory _$MovieDetailsStateCopyWith(_MovieDetailsState value, $Res Function(_MovieDetailsState) _then) = __$MovieDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 int movieId, bool isLoadingMovieDetails, MovieDetails movieDetails, Video trailer, List<Cast> cast, bool isWatchlisted, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});


@override $MovieDetailsCopyWith<$Res> get movieDetails;@override $VideoCopyWith<$Res> get trailer;

}
/// @nodoc
class __$MovieDetailsStateCopyWithImpl<$Res>
    implements _$MovieDetailsStateCopyWith<$Res> {
  __$MovieDetailsStateCopyWithImpl(this._self, this._then);

  final _MovieDetailsState _self;
  final $Res Function(_MovieDetailsState) _then;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movieId = null,Object? isLoadingMovieDetails = null,Object? movieDetails = null,Object? trailer = null,Object? cast = null,Object? isWatchlisted = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_MovieDetailsState(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,isLoadingMovieDetails: null == isLoadingMovieDetails ? _self.isLoadingMovieDetails : isLoadingMovieDetails // ignore: cast_nullable_to_non_nullable
as bool,movieDetails: null == movieDetails ? _self.movieDetails : movieDetails // ignore: cast_nullable_to_non_nullable
as MovieDetails,trailer: null == trailer ? _self.trailer : trailer // ignore: cast_nullable_to_non_nullable
as Video,cast: null == cast ? _self._cast : cast // ignore: cast_nullable_to_non_nullable
as List<Cast>,isWatchlisted: null == isWatchlisted ? _self.isWatchlisted : isWatchlisted // ignore: cast_nullable_to_non_nullable
as bool,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieDetailsCopyWith<$Res> get movieDetails {
  
  return $MovieDetailsCopyWith<$Res>(_self.movieDetails, (value) {
    return _then(_self.copyWith(movieDetails: value));
  });
}/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoCopyWith<$Res> get trailer {
  
  return $VideoCopyWith<$Res>(_self.trailer, (value) {
    return _then(_self.copyWith(trailer: value));
  });
}
}

// dart format on
