import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.offline() = _Offline;
  const factory Failure.authenticationFailure(AuthFailureReason reason) =
      _AuthenticationFailure;
  const factory Failure.serverError() = _ServerError;
  const factory Failure.signOutError() = _SignOutError;
  const factory Failure.unauthorizedAccess() = _UnauthorizedAccess;
  const factory Failure.unexpectedDataError() = _UnexpectedDataError;

  const factory Failure.authenticationLocalDataSourceFailure() =
      _AuthenticationLocalDataSourceFailure;
}

extension FailureMapper on Failure {
  String failureMessage() => map(
        offline: (s) => 'You have no internet connection!',
        authenticationFailure: (s) => 'Authentication failure',
        serverError: (s) => 'Server error has ocurred!',
        unauthorizedAccess: (s) => 'Unauthorized access',
        unexpectedDataError: (s) => 'Unexpected data error',
        signOutError: (s) => 'Sign out error',
        authenticationLocalDataSourceFailure: (s) =>
            'Authentication local data source error',
      );
}

enum AuthFailureReason {
  googleSignIn,
  other,
}

extension LocalizedAuthFailure on AuthFailureReason {
  String getLocalized(BuildContext context) {
    switch (this) {
      case AuthFailureReason.googleSignIn:
        return 'Greška s google sign-om!';
      case AuthFailureReason.other:
        return 'Greška ko zna od čega!';
    }
  }
}
