import 'package:dartz/dartz.dart';
import 'package:moviez_app/domain/core/error/value_failure.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  return input.isNotEmpty
      ? right(input)
      : left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<DateTime>, DateTime> validateDateYyyyMmDd(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: DateTime.now()));
  }
  try {
    // Accepts only YYYY-MM-DD
    final regex = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    if (!regex.hasMatch(input)) {
      return left(ValueFailure.invalidDateFormat(failedValue: DateTime.now()));
    }
    final dt = DateTime.parse(input);
    return right(dt);
  } catch (_) {
    return left(ValueFailure.invalidDateFormat(failedValue: DateTime.now()));
  }
}
