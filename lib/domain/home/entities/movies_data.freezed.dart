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

// dart format on
