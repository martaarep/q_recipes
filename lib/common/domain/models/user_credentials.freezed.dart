// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCredentials _$UserCredentialsFromJson(Map<String, dynamic> json) {
  return _UserCredentials.fromJson(json);
}

/// @nodoc
class _$UserCredentialsTearOff {
  const _$UserCredentialsTearOff();

  _UserCredentials call({required String email, required String uid}) {
    return _UserCredentials(
      email: email,
      uid: uid,
    );
  }

  UserCredentials fromJson(Map<String, Object?> json) {
    return UserCredentials.fromJson(json);
  }
}

/// @nodoc
const $UserCredentials = _$UserCredentialsTearOff();

/// @nodoc
mixin _$UserCredentials {
  String get email => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCredentialsCopyWith<UserCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialsCopyWith<$Res> {
  factory $UserCredentialsCopyWith(
          UserCredentials value, $Res Function(UserCredentials) then) =
      _$UserCredentialsCopyWithImpl<$Res>;
  $Res call({String email, String uid});
}

/// @nodoc
class _$UserCredentialsCopyWithImpl<$Res>
    implements $UserCredentialsCopyWith<$Res> {
  _$UserCredentialsCopyWithImpl(this._value, this._then);

  final UserCredentials _value;
  // ignore: unused_field
  final $Res Function(UserCredentials) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCredentialsCopyWith<$Res>
    implements $UserCredentialsCopyWith<$Res> {
  factory _$UserCredentialsCopyWith(
          _UserCredentials value, $Res Function(_UserCredentials) then) =
      __$UserCredentialsCopyWithImpl<$Res>;
  @override
  $Res call({String email, String uid});
}

/// @nodoc
class __$UserCredentialsCopyWithImpl<$Res>
    extends _$UserCredentialsCopyWithImpl<$Res>
    implements _$UserCredentialsCopyWith<$Res> {
  __$UserCredentialsCopyWithImpl(
      _UserCredentials _value, $Res Function(_UserCredentials) _then)
      : super(_value, (v) => _then(v as _UserCredentials));

  @override
  _UserCredentials get _value => super._value as _UserCredentials;

  @override
  $Res call({
    Object? email = freezed,
    Object? uid = freezed,
  }) {
    return _then(_UserCredentials(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCredentials implements _UserCredentials {
  const _$_UserCredentials({required this.email, required this.uid});

  factory _$_UserCredentials.fromJson(Map<String, dynamic> json) =>
      _$$_UserCredentialsFromJson(json);

  @override
  final String email;
  @override
  final String uid;

  @override
  String toString() {
    return 'UserCredentials(email: $email, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserCredentials &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$UserCredentialsCopyWith<_UserCredentials> get copyWith =>
      __$UserCredentialsCopyWithImpl<_UserCredentials>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCredentialsToJson(this);
  }
}

abstract class _UserCredentials implements UserCredentials {
  const factory _UserCredentials({required String email, required String uid}) =
      _$_UserCredentials;

  factory _UserCredentials.fromJson(Map<String, dynamic> json) =
      _$_UserCredentials.fromJson;

  @override
  String get email;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$UserCredentialsCopyWith<_UserCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}
