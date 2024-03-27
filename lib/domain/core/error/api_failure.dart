import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.other(String message) = _Other;
  const factory ApiFailure.serverError(String message) = _ServerError;
  const factory ApiFailure.poorConnection() = _PoorConnection;
  const factory ApiFailure.serverTimeout() = _ServerTimeout;

  //User failure
  const factory ApiFailure.userNotFound() = _UserNotFound;
  const factory ApiFailure.authenticationFailed() = _AuthenticationFailed;
}

extension ApiFailureExt on ApiFailure {
  String get failureMessage => map(
        other: (other) => other.message,
        serverError: (serverError) => serverError.message,
        poorConnection: (_) => 'Poor Internet connection',
        serverTimeout: (_) => 'Server time out',
        userNotFound: (_) => 'User not found.',
        authenticationFailed: (_) => 'Your session has expired',
      );
}
