import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failures.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.other(String message) = _Other;
  const factory ApiFailure.serverError(String message) = _ServerError;
  const factory ApiFailure.poorConnection() = _PoorConnection;
  const factory ApiFailure.serverTimeout() = _ServerTimeout;
  const factory ApiFailure.networkError() = _NetworkError;
}

extension ApiFailureExt on ApiFailure {
  Failure get failureMessage => map(
    other: (other) => Failure(other.message),
    serverError: (serverError) => Failure(serverError.message),
    poorConnection: (_) => const Failure('Poor Internet connection'),
    serverTimeout: (_) => const Failure('Server time out'),
    networkError: (_) => const Failure('No Internet connection'),
  );
}

@freezed
abstract class Failure with _$Failure {
  const Failure._();

  const factory Failure(
    String message, {
    @Default(<String, String>{}) Map<String, String> arguments,
  }) = _Failure;
}
