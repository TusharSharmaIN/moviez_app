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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _SetMovieId value)?  setMovieId,TResult Function( _LoadMovieDetails value)?  loadMovieDetails,TResult Function( _LoadTrailerDetails value)?  loadTrailerDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _SetMovieId() when setMovieId != null:
return setMovieId(_that);case _LoadMovieDetails() when loadMovieDetails != null:
return loadMovieDetails(_that);case _LoadTrailerDetails() when loadTrailerDetails != null:
return loadTrailerDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _SetMovieId value)  setMovieId,required TResult Function( _LoadMovieDetails value)  loadMovieDetails,required TResult Function( _LoadTrailerDetails value)  loadTrailerDetails,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _SetMovieId():
return setMovieId(_that);case _LoadMovieDetails():
return loadMovieDetails(_that);case _LoadTrailerDetails():
return loadTrailerDetails(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _SetMovieId value)?  setMovieId,TResult? Function( _LoadMovieDetails value)?  loadMovieDetails,TResult? Function( _LoadTrailerDetails value)?  loadTrailerDetails,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _SetMovieId() when setMovieId != null:
return setMovieId(_that);case _LoadMovieDetails() when loadMovieDetails != null:
return loadMovieDetails(_that);case _LoadTrailerDetails() when loadTrailerDetails != null:
return loadTrailerDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( String movieId)?  setMovieId,TResult Function()?  loadMovieDetails,TResult Function()?  loadTrailerDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _SetMovieId() when setMovieId != null:
return setMovieId(_that.movieId);case _LoadMovieDetails() when loadMovieDetails != null:
return loadMovieDetails();case _LoadTrailerDetails() when loadTrailerDetails != null:
return loadTrailerDetails();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( String movieId)  setMovieId,required TResult Function()  loadMovieDetails,required TResult Function()  loadTrailerDetails,}) {final _that = this;
switch (_that) {
case _Init():
return init();case _SetMovieId():
return setMovieId(_that.movieId);case _LoadMovieDetails():
return loadMovieDetails();case _LoadTrailerDetails():
return loadTrailerDetails();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( String movieId)?  setMovieId,TResult? Function()?  loadMovieDetails,TResult? Function()?  loadTrailerDetails,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _SetMovieId() when setMovieId != null:
return setMovieId(_that.movieId);case _LoadMovieDetails() when loadMovieDetails != null:
return loadMovieDetails();case _LoadTrailerDetails() when loadTrailerDetails != null:
return loadTrailerDetails();case _:
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
  

 final  String movieId;

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
 String movieId
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
as String,
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
mixin _$MovieDetailsState {

 int get movieId; bool get isLoadingMovieDetails; MovieDetails get movieDetails; bool get isLoadingTrailerDetails; Video get trailer; Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccess;
/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailsStateCopyWith<MovieDetailsState> get copyWith => _$MovieDetailsStateCopyWithImpl<MovieDetailsState>(this as MovieDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailsState&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.isLoadingMovieDetails, isLoadingMovieDetails) || other.isLoadingMovieDetails == isLoadingMovieDetails)&&(identical(other.movieDetails, movieDetails) || other.movieDetails == movieDetails)&&(identical(other.isLoadingTrailerDetails, isLoadingTrailerDetails) || other.isLoadingTrailerDetails == isLoadingTrailerDetails)&&(identical(other.trailer, trailer) || other.trailer == trailer)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,movieId,isLoadingMovieDetails,movieDetails,isLoadingTrailerDetails,trailer,apiFailureOrSuccess);

@override
String toString() {
  return 'MovieDetailsState(movieId: $movieId, isLoadingMovieDetails: $isLoadingMovieDetails, movieDetails: $movieDetails, isLoadingTrailerDetails: $isLoadingTrailerDetails, trailer: $trailer, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $MovieDetailsStateCopyWith<$Res>  {
  factory $MovieDetailsStateCopyWith(MovieDetailsState value, $Res Function(MovieDetailsState) _then) = _$MovieDetailsStateCopyWithImpl;
@useResult
$Res call({
 int movieId, bool isLoadingMovieDetails, MovieDetails movieDetails, bool isLoadingTrailerDetails, Video trailer, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
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
@pragma('vm:prefer-inline') @override $Res call({Object? movieId = null,Object? isLoadingMovieDetails = null,Object? movieDetails = null,Object? isLoadingTrailerDetails = null,Object? trailer = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_self.copyWith(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,isLoadingMovieDetails: null == isLoadingMovieDetails ? _self.isLoadingMovieDetails : isLoadingMovieDetails // ignore: cast_nullable_to_non_nullable
as bool,movieDetails: null == movieDetails ? _self.movieDetails : movieDetails // ignore: cast_nullable_to_non_nullable
as MovieDetails,isLoadingTrailerDetails: null == isLoadingTrailerDetails ? _self.isLoadingTrailerDetails : isLoadingTrailerDetails // ignore: cast_nullable_to_non_nullable
as bool,trailer: null == trailer ? _self.trailer : trailer // ignore: cast_nullable_to_non_nullable
as Video,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int movieId,  bool isLoadingMovieDetails,  MovieDetails movieDetails,  bool isLoadingTrailerDetails,  Video trailer,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailsState() when $default != null:
return $default(_that.movieId,_that.isLoadingMovieDetails,_that.movieDetails,_that.isLoadingTrailerDetails,_that.trailer,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int movieId,  bool isLoadingMovieDetails,  MovieDetails movieDetails,  bool isLoadingTrailerDetails,  Video trailer,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailsState():
return $default(_that.movieId,_that.isLoadingMovieDetails,_that.movieDetails,_that.isLoadingTrailerDetails,_that.trailer,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int movieId,  bool isLoadingMovieDetails,  MovieDetails movieDetails,  bool isLoadingTrailerDetails,  Video trailer,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailsState() when $default != null:
return $default(_that.movieId,_that.isLoadingMovieDetails,_that.movieDetails,_that.isLoadingTrailerDetails,_that.trailer,_that.apiFailureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _MovieDetailsState extends MovieDetailsState {
  const _MovieDetailsState({required this.movieId, required this.isLoadingMovieDetails, required this.movieDetails, required this.isLoadingTrailerDetails, required this.trailer, required this.apiFailureOrSuccess}): super._();
  

@override final  int movieId;
@override final  bool isLoadingMovieDetails;
@override final  MovieDetails movieDetails;
@override final  bool isLoadingTrailerDetails;
@override final  Video trailer;
@override final  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess;

/// Create a copy of MovieDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailsStateCopyWith<_MovieDetailsState> get copyWith => __$MovieDetailsStateCopyWithImpl<_MovieDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailsState&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.isLoadingMovieDetails, isLoadingMovieDetails) || other.isLoadingMovieDetails == isLoadingMovieDetails)&&(identical(other.movieDetails, movieDetails) || other.movieDetails == movieDetails)&&(identical(other.isLoadingTrailerDetails, isLoadingTrailerDetails) || other.isLoadingTrailerDetails == isLoadingTrailerDetails)&&(identical(other.trailer, trailer) || other.trailer == trailer)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,movieId,isLoadingMovieDetails,movieDetails,isLoadingTrailerDetails,trailer,apiFailureOrSuccess);

@override
String toString() {
  return 'MovieDetailsState(movieId: $movieId, isLoadingMovieDetails: $isLoadingMovieDetails, movieDetails: $movieDetails, isLoadingTrailerDetails: $isLoadingTrailerDetails, trailer: $trailer, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailsStateCopyWith<$Res> implements $MovieDetailsStateCopyWith<$Res> {
  factory _$MovieDetailsStateCopyWith(_MovieDetailsState value, $Res Function(_MovieDetailsState) _then) = __$MovieDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 int movieId, bool isLoadingMovieDetails, MovieDetails movieDetails, bool isLoadingTrailerDetails, Video trailer, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
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
@override @pragma('vm:prefer-inline') $Res call({Object? movieId = null,Object? isLoadingMovieDetails = null,Object? movieDetails = null,Object? isLoadingTrailerDetails = null,Object? trailer = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_MovieDetailsState(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,isLoadingMovieDetails: null == isLoadingMovieDetails ? _self.isLoadingMovieDetails : isLoadingMovieDetails // ignore: cast_nullable_to_non_nullable
as bool,movieDetails: null == movieDetails ? _self.movieDetails : movieDetails // ignore: cast_nullable_to_non_nullable
as MovieDetails,isLoadingTrailerDetails: null == isLoadingTrailerDetails ? _self.isLoadingTrailerDetails : isLoadingTrailerDetails // ignore: cast_nullable_to_non_nullable
as bool,trailer: null == trailer ? _self.trailer : trailer // ignore: cast_nullable_to_non_nullable
as Video,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
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
