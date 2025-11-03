import 'dart:io';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:moviez_app/domain/core/error/api_failures.dart';
import 'package:moviez_app/domain/core/error/exceptions.dart';

class FailureHandler {
  static ApiFailure handleFailure(Object error) {
    switch (error.runtimeType) {
      case ServerException:
        final message = (error as ServerException).message;
        return ApiFailure.serverError(message);
      case SocketException:
        return const ApiFailure.poorConnection();
      case TimeoutException:
        return const ApiFailure.serverTimeout();
      case PlatformException:
        return ApiFailure.other('${(error as PlatformException).message}');
      case OtherException:
        return ApiFailure.other((error as OtherException).message);
      case ApiFailure:
        return error as ApiFailure;
      default:
        return ApiFailure.other(error.toString());
    }
  }
}
