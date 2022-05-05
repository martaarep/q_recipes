// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthExceptionTearOff {
  const _$AuthExceptionTearOff();

  _AuthException call({required AuthFailureReason failureReason}) {
    return _AuthException(
      failureReason: failureReason,
    );
  }
}

/// @nodoc
const $AuthException = _$AuthExceptionTearOff();

/// @nodoc
mixin _$AuthException {
  AuthFailureReason get failureReason => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthExceptionCopyWith<AuthException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExceptionCopyWith<$Res> {
  factory $AuthExceptionCopyWith(
          AuthException value, $Res Function(AuthException) then) =
      _$AuthExceptionCopyWithImpl<$Res>;
  $Res call({AuthFailureReason failureReason});
}

/// @nodoc
class _$AuthExceptionCopyWithImpl<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  _$AuthExceptionCopyWithImpl(this._value, this._then);

  final AuthException _value;
  // ignore: unused_field
  final $Res Function(AuthException) _then;

  @override
  $Res call({
    Object? failureReason = freezed,
  }) {
    return _then(_value.copyWith(
      failureReason: failureReason == freezed
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as AuthFailureReason,
    ));
  }
}

/// @nodoc
abstract class _$AuthExceptionCopyWith<$Res>
    implements $AuthExceptionCopyWith<$Res> {
  factory _$AuthExceptionCopyWith(
          _AuthException value, $Res Function(_AuthException) then) =
      __$AuthExceptionCopyWithImpl<$Res>;
  @override
  $Res call({AuthFailureReason failureReason});
}

/// @nodoc
class __$AuthExceptionCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res>
    implements _$AuthExceptionCopyWith<$Res> {
  __$AuthExceptionCopyWithImpl(
      _AuthException _value, $Res Function(_AuthException) _then)
      : super(_value, (v) => _then(v as _AuthException));

  @override
  _AuthException get _value => super._value as _AuthException;

  @override
  $Res call({
    Object? failureReason = freezed,
  }) {
    return _then(_AuthException(
      failureReason: failureReason == freezed
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as AuthFailureReason,
    ));
  }
}

/// @nodoc

class _$_AuthException implements _AuthException {
  const _$_AuthException({required this.failureReason});

  @override
  final AuthFailureReason failureReason;

  @override
  String toString() {
    return 'AuthException(failureReason: $failureReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthException &&
            const DeepCollectionEquality()
                .equals(other.failureReason, failureReason));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureReason));

  @JsonKey(ignore: true)
  @override
  _$AuthExceptionCopyWith<_AuthException> get copyWith =>
      __$AuthExceptionCopyWithImpl<_AuthException>(this, _$identity);
}

abstract class _AuthException implements AuthException {
  const factory _AuthException({required AuthFailureReason failureReason}) =
      _$_AuthException;

  @override
  AuthFailureReason get failureReason;
  @override
  @JsonKey(ignore: true)
  _$AuthExceptionCopyWith<_AuthException> get copyWith =>
      throw _privateConstructorUsedError;
}
