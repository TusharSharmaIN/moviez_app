// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _LoadNowShowingMovies value)?  loadNowShowingMovies,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _LoadNowShowingMovies() when loadNowShowingMovies != null:
return loadNowShowingMovies(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _LoadNowShowingMovies value)  loadNowShowingMovies,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _LoadNowShowingMovies():
return loadNowShowingMovies(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _LoadNowShowingMovies value)?  loadNowShowingMovies,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _LoadNowShowingMovies() when loadNowShowingMovies != null:
return loadNowShowingMovies(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  loadNowShowingMovies,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _LoadNowShowingMovies() when loadNowShowingMovies != null:
return loadNowShowingMovies();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  loadNowShowingMovies,}) {final _that = this;
switch (_that) {
case _Init():
return init();case _LoadNowShowingMovies():
return loadNowShowingMovies();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  loadNowShowingMovies,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _LoadNowShowingMovies() when loadNowShowingMovies != null:
return loadNowShowingMovies();case _:
  return null;

}
}

}

/// @nodoc


class _Init implements HomeEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.init()';
}


}




/// @nodoc


class _LoadNowShowingMovies implements HomeEvent {
  const _LoadNowShowingMovies();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadNowShowingMovies);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.loadNowShowingMovies()';
}


}




/// @nodoc
mixin _$HomeState {

 bool get isLoadingNowShowingMovies; bool get isLoadingPopularMovies; MoviesData get nowShowingMovies; Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccess;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.isLoadingNowShowingMovies, isLoadingNowShowingMovies) || other.isLoadingNowShowingMovies == isLoadingNowShowingMovies)&&(identical(other.isLoadingPopularMovies, isLoadingPopularMovies) || other.isLoadingPopularMovies == isLoadingPopularMovies)&&(identical(other.nowShowingMovies, nowShowingMovies) || other.nowShowingMovies == nowShowingMovies)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingNowShowingMovies,isLoadingPopularMovies,nowShowingMovies,apiFailureOrSuccess);

@override
String toString() {
  return 'HomeState(isLoadingNowShowingMovies: $isLoadingNowShowingMovies, isLoadingPopularMovies: $isLoadingPopularMovies, nowShowingMovies: $nowShowingMovies, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool isLoadingNowShowingMovies, bool isLoadingPopularMovies, MoviesData nowShowingMovies, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});


$MoviesDataCopyWith<$Res> get nowShowingMovies;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoadingNowShowingMovies = null,Object? isLoadingPopularMovies = null,Object? nowShowingMovies = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_self.copyWith(
isLoadingNowShowingMovies: null == isLoadingNowShowingMovies ? _self.isLoadingNowShowingMovies : isLoadingNowShowingMovies // ignore: cast_nullable_to_non_nullable
as bool,isLoadingPopularMovies: null == isLoadingPopularMovies ? _self.isLoadingPopularMovies : isLoadingPopularMovies // ignore: cast_nullable_to_non_nullable
as bool,nowShowingMovies: null == nowShowingMovies ? _self.nowShowingMovies : nowShowingMovies // ignore: cast_nullable_to_non_nullable
as MoviesData,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoviesDataCopyWith<$Res> get nowShowingMovies {
  
  return $MoviesDataCopyWith<$Res>(_self.nowShowingMovies, (value) {
    return _then(_self.copyWith(nowShowingMovies: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoadingNowShowingMovies,  bool isLoadingPopularMovies,  MoviesData nowShowingMovies,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isLoadingNowShowingMovies,_that.isLoadingPopularMovies,_that.nowShowingMovies,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoadingNowShowingMovies,  bool isLoadingPopularMovies,  MoviesData nowShowingMovies,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.isLoadingNowShowingMovies,_that.isLoadingPopularMovies,_that.nowShowingMovies,_that.apiFailureOrSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoadingNowShowingMovies,  bool isLoadingPopularMovies,  MoviesData nowShowingMovies,  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isLoadingNowShowingMovies,_that.isLoadingPopularMovies,_that.nowShowingMovies,_that.apiFailureOrSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState extends HomeState {
  const _HomeState({required this.isLoadingNowShowingMovies, required this.isLoadingPopularMovies, required this.nowShowingMovies, required this.apiFailureOrSuccess}): super._();
  

@override final  bool isLoadingNowShowingMovies;
@override final  bool isLoadingPopularMovies;
@override final  MoviesData nowShowingMovies;
@override final  Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.isLoadingNowShowingMovies, isLoadingNowShowingMovies) || other.isLoadingNowShowingMovies == isLoadingNowShowingMovies)&&(identical(other.isLoadingPopularMovies, isLoadingPopularMovies) || other.isLoadingPopularMovies == isLoadingPopularMovies)&&(identical(other.nowShowingMovies, nowShowingMovies) || other.nowShowingMovies == nowShowingMovies)&&(identical(other.apiFailureOrSuccess, apiFailureOrSuccess) || other.apiFailureOrSuccess == apiFailureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingNowShowingMovies,isLoadingPopularMovies,nowShowingMovies,apiFailureOrSuccess);

@override
String toString() {
  return 'HomeState(isLoadingNowShowingMovies: $isLoadingNowShowingMovies, isLoadingPopularMovies: $isLoadingPopularMovies, nowShowingMovies: $nowShowingMovies, apiFailureOrSuccess: $apiFailureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoadingNowShowingMovies, bool isLoadingPopularMovies, MoviesData nowShowingMovies, Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess
});


@override $MoviesDataCopyWith<$Res> get nowShowingMovies;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoadingNowShowingMovies = null,Object? isLoadingPopularMovies = null,Object? nowShowingMovies = null,Object? apiFailureOrSuccess = null,}) {
  return _then(_HomeState(
isLoadingNowShowingMovies: null == isLoadingNowShowingMovies ? _self.isLoadingNowShowingMovies : isLoadingNowShowingMovies // ignore: cast_nullable_to_non_nullable
as bool,isLoadingPopularMovies: null == isLoadingPopularMovies ? _self.isLoadingPopularMovies : isLoadingPopularMovies // ignore: cast_nullable_to_non_nullable
as bool,nowShowingMovies: null == nowShowingMovies ? _self.nowShowingMovies : nowShowingMovies // ignore: cast_nullable_to_non_nullable
as MoviesData,apiFailureOrSuccess: null == apiFailureOrSuccess ? _self.apiFailureOrSuccess : apiFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<ApiFailure, dynamic>>,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoviesDataCopyWith<$Res> get nowShowingMovies {
  
  return $MoviesDataCopyWith<$Res>(_self.nowShowingMovies, (value) {
    return _then(_self.copyWith(nowShowingMovies: value));
  });
}
}

// dart format on
