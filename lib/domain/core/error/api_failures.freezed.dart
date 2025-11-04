// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure()';
}


}

/// @nodoc
class $ApiFailureCopyWith<$Res>  {
$ApiFailureCopyWith(ApiFailure _, $Res Function(ApiFailure) __);
}


/// Adds pattern-matching-related methods to [ApiFailure].
extension ApiFailurePatterns on ApiFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Other value)?  other,TResult Function( _ServerError value)?  serverError,TResult Function( _PoorConnection value)?  poorConnection,TResult Function( _ServerTimeout value)?  serverTimeout,TResult Function( _NetworkError value)?  networkError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Other() when other != null:
return other(_that);case _ServerError() when serverError != null:
return serverError(_that);case _PoorConnection() when poorConnection != null:
return poorConnection(_that);case _ServerTimeout() when serverTimeout != null:
return serverTimeout(_that);case _NetworkError() when networkError != null:
return networkError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Other value)  other,required TResult Function( _ServerError value)  serverError,required TResult Function( _PoorConnection value)  poorConnection,required TResult Function( _ServerTimeout value)  serverTimeout,required TResult Function( _NetworkError value)  networkError,}){
final _that = this;
switch (_that) {
case _Other():
return other(_that);case _ServerError():
return serverError(_that);case _PoorConnection():
return poorConnection(_that);case _ServerTimeout():
return serverTimeout(_that);case _NetworkError():
return networkError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Other value)?  other,TResult? Function( _ServerError value)?  serverError,TResult? Function( _PoorConnection value)?  poorConnection,TResult? Function( _ServerTimeout value)?  serverTimeout,TResult? Function( _NetworkError value)?  networkError,}){
final _that = this;
switch (_that) {
case _Other() when other != null:
return other(_that);case _ServerError() when serverError != null:
return serverError(_that);case _PoorConnection() when poorConnection != null:
return poorConnection(_that);case _ServerTimeout() when serverTimeout != null:
return serverTimeout(_that);case _NetworkError() when networkError != null:
return networkError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  other,TResult Function( String message)?  serverError,TResult Function()?  poorConnection,TResult Function()?  serverTimeout,TResult Function()?  networkError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Other() when other != null:
return other(_that.message);case _ServerError() when serverError != null:
return serverError(_that.message);case _PoorConnection() when poorConnection != null:
return poorConnection();case _ServerTimeout() when serverTimeout != null:
return serverTimeout();case _NetworkError() when networkError != null:
return networkError();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  other,required TResult Function( String message)  serverError,required TResult Function()  poorConnection,required TResult Function()  serverTimeout,required TResult Function()  networkError,}) {final _that = this;
switch (_that) {
case _Other():
return other(_that.message);case _ServerError():
return serverError(_that.message);case _PoorConnection():
return poorConnection();case _ServerTimeout():
return serverTimeout();case _NetworkError():
return networkError();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  other,TResult? Function( String message)?  serverError,TResult? Function()?  poorConnection,TResult? Function()?  serverTimeout,TResult? Function()?  networkError,}) {final _that = this;
switch (_that) {
case _Other() when other != null:
return other(_that.message);case _ServerError() when serverError != null:
return serverError(_that.message);case _PoorConnection() when poorConnection != null:
return poorConnection();case _ServerTimeout() when serverTimeout != null:
return serverTimeout();case _NetworkError() when networkError != null:
return networkError();case _:
  return null;

}
}

}

/// @nodoc


class _Other implements ApiFailure {
  const _Other(this.message);
  

 final  String message;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherCopyWith<_Other> get copyWith => __$OtherCopyWithImpl<_Other>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Other&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiFailure.other(message: $message)';
}


}

/// @nodoc
abstract mixin class _$OtherCopyWith<$Res> implements $ApiFailureCopyWith<$Res> {
  factory _$OtherCopyWith(_Other value, $Res Function(_Other) _then) = __$OtherCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$OtherCopyWithImpl<$Res>
    implements _$OtherCopyWith<$Res> {
  __$OtherCopyWithImpl(this._self, this._then);

  final _Other _self;
  final $Res Function(_Other) _then;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Other(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ServerError implements ApiFailure {
  const _ServerError(this.message);
  

 final  String message;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerErrorCopyWith<_ServerError> get copyWith => __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiFailure.serverError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerErrorCopyWith<$Res> implements $ApiFailureCopyWith<$Res> {
  factory _$ServerErrorCopyWith(_ServerError value, $Res Function(_ServerError) _then) = __$ServerErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(this._self, this._then);

  final _ServerError _self;
  final $Res Function(_ServerError) _then;

/// Create a copy of ApiFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PoorConnection implements ApiFailure {
  const _PoorConnection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PoorConnection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.poorConnection()';
}


}




/// @nodoc


class _ServerTimeout implements ApiFailure {
  const _ServerTimeout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.serverTimeout()';
}


}




/// @nodoc


class _NetworkError implements ApiFailure {
  const _NetworkError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiFailure.networkError()';
}


}




/// @nodoc
mixin _$Failure {

 String get message; Map<String, String> get arguments;
/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.arguments, arguments));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(arguments));

@override
String toString() {
  return 'Failure(message: $message, arguments: $arguments)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res>  {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message, Map<String, String> arguments
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? arguments = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,arguments: null == arguments ? _self.arguments : arguments // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Failure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Failure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Failure value)  $default,){
final _that = this;
switch (_that) {
case _Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Failure value)?  $default,){
final _that = this;
switch (_that) {
case _Failure() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  Map<String, String> arguments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Failure() when $default != null:
return $default(_that.message,_that.arguments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  Map<String, String> arguments)  $default,) {final _that = this;
switch (_that) {
case _Failure():
return $default(_that.message,_that.arguments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  Map<String, String> arguments)?  $default,) {final _that = this;
switch (_that) {
case _Failure() when $default != null:
return $default(_that.message,_that.arguments);case _:
  return null;

}
}

}

/// @nodoc


class _Failure extends Failure {
  const _Failure(this.message, {final  Map<String, String> arguments = const <String, String>{}}): _arguments = arguments,super._();
  

@override final  String message;
 final  Map<String, String> _arguments;
@override@JsonKey() Map<String, String> get arguments {
  if (_arguments is EqualUnmodifiableMapView) return _arguments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_arguments);
}


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._arguments, _arguments));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_arguments));

@override
String toString() {
  return 'Failure(message: $message, arguments: $arguments)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@override @useResult
$Res call({
 String message, Map<String, String> arguments
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? arguments = null,}) {
  return _then(_Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,arguments: null == arguments ? _self._arguments : arguments // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
