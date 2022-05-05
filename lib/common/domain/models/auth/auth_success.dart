import 'package:flutter_tdd_q/common/domain/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_success.freezed.dart';

@freezed
abstract class AuthSuccess with _$AuthSuccess {
  const factory AuthSuccess({
    required bool registrationComplete,
    required User user,
  }) = _AuthSuccess;
}
