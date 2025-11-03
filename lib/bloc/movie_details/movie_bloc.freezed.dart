// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieEvent()';
}


}

/// @nodoc
class $MovieEventCopyWith<$Res>  {
$MovieEventCopyWith(MovieEvent _, $Res Function(MovieEvent) __);
}


/// Adds pattern-matching-related methods to [MovieEvent].
extension MovieEventPatterns on MovieEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _LoadMovieDetails value)?  loadMovieDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _LoadMovieDetails() when loadMovieDetails != null:
return loadMovieDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _LoadMovieDetails value)  loadMovieDetails,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _LoadMovieDetails():
return loadMovieDetails(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _LoadMovieDetails value)?  loadMovieDetails,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _LoadMovieDetails() when loadMovieDetails != null:
return loadMovieDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  loadMovieDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _LoadMovieDetails() when loadMovieDetails != null:
return loadMovieDetails();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  loadMovieDetails,}) {final _that = this;
switch (_that) {
case _Init():
return init();case _LoadMovieDetails():
return loadMovieDetails();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  loadMovieDetails,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _LoadMovieDetails() when loadMovieDetails != null:
return loadMovieDetails();case _:
  return null;

}
}

}

/// @nodoc


class _Init implements MovieEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieEvent.init()';
}


}




/// @nodoc


class _LoadMovieDetails implements MovieEvent {
  const _LoadMovieDetails();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMovieDetails);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieEvent.loadMovieDetails()';
}


}




/// @nodoc
mixin _$MovieState {

 bool get isLoadingMovieDetails; Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccess;
/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieStateCopyWith<MovieState> get copyWith => _$MovieStateCopyWithImpl<MovieState>(this as MovieState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieState&&(identical(other.isLoadingMovieDetails, isLoadingMovieDetails) || other.isLoadingMovieDetails == isLoadingMovieDetails)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingMovieDetails,apiFailureOrSuccess);

@override
String toString() {
  return 'MovieState(isLoadingMovieDetails: $isLoadingMovieDetails, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $MovieStateCopyWith<$Res>  {
  factory $MovieStateCopyWith(MovieState value, $Res Function(MovieState) _then) = _$MovieStateCopyWithImpl;
@useResult
$Res call({
 bool isLoadingMovieDetails, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});




}
/// @nodoc
class _$MovieStateCopyWithImpl<$Res>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._self, this._then);

  final MovieState _self;
  final $Res Function(MovieState) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoadingMovieDetails = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_self.copyWith(
isLoadingMovieDetails: null == isLoadingMovieDetails ? _self.isLoadingMovieDetails : isLoadingMovieDetails // ignore: cast_nullable_to_non_nullable
as bool,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieState].
extension MovieStatePatterns on MovieState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieState value)  $default,){
final _that = this;
switch (_that) {
case _MovieState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieState value)?  $default,){
final _that = this;
switch (_that) {
case _MovieState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoadingMovieDetails,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieState() when $default != null:
return $default(_that.isLoadingMovieDetails,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoadingMovieDetails,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _MovieState():
return $default(_that.isLoadingMovieDetails,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoadingMovieDetails,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _MovieState() when $default != null:
return $default(_that.isLoadingMovieDetails,_that.apiFailureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _MovieState extends MovieState {
  const _MovieState({required this.isLoadingMovieDetails, required this.apiFailureOrSuccess}): super._();
  

@override final  bool isLoadingMovieDetails;
@override final  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieStateCopyWith<_MovieState> get copyWith => __$MovieStateCopyWithImpl<_MovieState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieState&&(identical(other.isLoadingMovieDetails, isLoadingMovieDetails) || other.isLoadingMovieDetails == isLoadingMovieDetails)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingMovieDetails,apiFailureOrSuccess);

@override
String toString() {
  return 'MovieState(isLoadingMovieDetails: $isLoadingMovieDetails, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$MovieStateCopyWith<$Res> implements $MovieStateCopyWith<$Res> {
  factory _$MovieStateCopyWith(_MovieState value, $Res Function(_MovieState) _then) = __$MovieStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoadingMovieDetails, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});




}
/// @nodoc
class __$MovieStateCopyWithImpl<$Res>
    implements _$MovieStateCopyWith<$Res> {
  __$MovieStateCopyWithImpl(this._self, this._then);

  final _MovieState _self;
  final $Res Function(_MovieState) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoadingMovieDetails = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_MovieState(
isLoadingMovieDetails: null == isLoadingMovieDetails ? _self.isLoadingMovieDetails : isLoadingMovieDetails // ignore: cast_nullable_to_non_nullable
as bool,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}


}

// dart format on
