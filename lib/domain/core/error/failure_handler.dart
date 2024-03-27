import 'dart:async';
import 'package:flutter/services.dart';

import '../../auth/error/auth_exception.dart';
import 'api_failure.dart';
import 'exception.dart';

class FailureHandler {
  static ApiFailure handleFailure(Object error) {
    if (error is AuthException) {
      return error.map(
        signInError: (_) => const ApiFailure.authenticationFailed(),
      );
    } else {
      switch (error.runtimeType) {
        case MockException:
          return ApiFailure.other((error as MockException).message);
        case CacheException:
          return ApiFailure.other((error as CacheException).message);
        case ServerException:
          final message = (error as ServerException).message;
          if (message == 'authentication failed') {
            return const ApiFailure.authenticationFailed();
          }
          return ApiFailure.serverError(message);
        case TimeoutException:
          return const ApiFailure.serverTimeout();
        case PlatformException:
          return ApiFailure.other('${(error as PlatformException).message}');
        case OtherException:
          return ApiFailure.other((error as OtherException).message);

        default:
          return ApiFailure.other(error.toString());
      }
    }
  }
}
