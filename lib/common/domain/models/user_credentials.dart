import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials.freezed.dart';
part 'user_credentials.g.dart';

@freezed
abstract class UserCredentials with _$UserCredentials {
  const factory UserCredentials({
    required String email,
    required String uid,
  }) = _UserCredentials;

  factory UserCredentials.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialsFromJson(json);
}
