import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticating() = _Authenticating;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.savedUser() = _SavedUser;
  const factory AuthState.signedOut() = _SignedOut;
  const factory AuthState.failure(Failure failure) = _Failure;
}
