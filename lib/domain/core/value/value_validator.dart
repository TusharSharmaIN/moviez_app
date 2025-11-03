import 'package:dartz/dartz.dart';
import 'package:moviez_app/domain/core/error/value_failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  return input.isNotEmpty
      ? right(input)
      : left(ValueFailure.empty(failedValue: input));
}
