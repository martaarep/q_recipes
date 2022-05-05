// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthSuccessTearOff {
  const _$AuthSuccessTearOff();

  _AuthSuccess call({required bool registrationComplete, required User user}) {
    return _AuthSuccess(
      registrationComplete: registrationComplete,
      user: user,
    );
  }
}

/// @nodoc
const $AuthSuccess = _$AuthSuccessTearOff();

/// @nodoc
mixin _$AuthSuccess {
  bool get registrationComplete => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthSuccessCopyWith<AuthSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSuccessCopyWith<$Res> {
  factory $AuthSuccessCopyWith(
          AuthSuccess value, $Res Function(AuthSuccess) then) =
      _$AuthSuccessCopyWithImpl<$Res>;
  $Res call({bool registrationComplete, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthSuccessCopyWithImpl<$Res> implements $AuthSuccessCopyWith<$Res> {
  _$AuthSuccessCopyWithImpl(this._value, this._then);

  final AuthSuccess _value;
  // ignore: unused_field
  final $Res Function(AuthSuccess) _then;

  @override
  $Res call({
    Object? registrationComplete = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      registrationComplete: registrationComplete == freezed
          ? _value.registrationComplete
          : registrationComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthSuccessCopyWith<$Res>
    implements $AuthSuccessCopyWith<$Res> {
  factory _$AuthSuccessCopyWith(
          _AuthSuccess value, $Res Function(_AuthSuccess) then) =
      __$AuthSuccessCopyWithImpl<$Res>;
  @override
  $Res call({bool registrationComplete, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthSuccessCopyWithImpl<$Res> extends _$AuthSuccessCopyWithImpl<$Res>
    implements _$AuthSuccessCopyWith<$Res> {
  __$AuthSuccessCopyWithImpl(
      _AuthSuccess _value, $Res Function(_AuthSuccess) _then)
      : super(_value, (v) => _then(v as _AuthSuccess));

  @override
  _AuthSuccess get _value => super._value as _AuthSuccess;

  @override
  $Res call({
    Object? registrationComplete = freezed,
    Object? user = freezed,
  }) {
    return _then(_AuthSuccess(
      registrationComplete: registrationComplete == freezed
          ? _value.registrationComplete
          : registrationComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_AuthSuccess implements _AuthSuccess {
  const _$_AuthSuccess(
      {required this.registrationComplete, required this.user});

  @override
  final bool registrationComplete;
  @override
  final User user;

  @override
  String toString() {
    return 'AuthSuccess(registrationComplete: $registrationComplete, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthSuccess &&
            const DeepCollectionEquality()
                .equals(other.registrationComplete, registrationComplete) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(registrationComplete),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$AuthSuccessCopyWith<_AuthSuccess> get copyWith =>
      __$AuthSuccessCopyWithImpl<_AuthSuccess>(this, _$identity);
}

abstract class _AuthSuccess implements AuthSuccess {
  const factory _AuthSuccess(
      {required bool registrationComplete,
      required User user}) = _$_AuthSuccess;

  @override
  bool get registrationComplete;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$AuthSuccessCopyWith<_AuthSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
