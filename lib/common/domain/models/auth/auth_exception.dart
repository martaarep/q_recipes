import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_exception.freezed.dart';

@freezed
abstract class AuthException with _$AuthException {
  const factory AuthException({
    required AuthFailureReason failureReason,
  }) = _AuthException;
}
