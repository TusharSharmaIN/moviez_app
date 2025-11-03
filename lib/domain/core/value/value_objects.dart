import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:moviez_app/domain/core/error/value_error.dart';
import 'package:moviez_app/domain/core/error/value_failure.dart';
import 'package:moviez_app/domain/core/value/value_validator.dart';
import 'package:moviez_app/domain/core/value_objects/value_transformer.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrDefaultValue(T defaultValue) {
    return value.fold((f) => defaultValue, id);
  }

  T getValue() => value.fold((f) => f.failedValue, (r) => r);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  int get hashcode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class StringValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringValue(String input) =>
      StringValue._(validateStringNotEmpty(input));

  String get displayDashIfEmpty => dashIfEmpty((value.getOrElse(() => '')));

  String get displayNAIfEmpty => naIfEmpty(value.getOrElse(() => ''));

  bool get isNotEmpty => value.getOrElse(() => '').isNotEmpty;

  const StringValue._(this.value);
}
