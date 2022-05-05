// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Authenticating authenticating() {
    return const _Authenticating();
  }

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

  _Authenticated authenticated() {
    return const _Authenticated();
  }

  _SavedUser savedUser() {
    return const _SavedUser();
  }

  _SignedOut signedOut() {
    return const _SignedOut();
  }

  _Failure failure(Failure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() savedUser,
    required TResult Function() signedOut,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SavedUser value) savedUser,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() savedUser,
    required TResult Function() signedOut,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SavedUser value) savedUser,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AuthenticatingCopyWith<$Res> {
  factory _$AuthenticatingCopyWith(
          _Authenticating value, $Res Function(_Authenticating) then) =
      __$AuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatingCopyWith<$Res> {
  __$AuthenticatingCopyWithImpl(
      _Authenticating _value, $Res Function(_Authenticating) _then)
      : super(_value, (v) => _then(v as _Authenticating));

  @override
  _Authenticating get _value => super._value as _Authenticating;
}

/// @nodoc

class _$_Authenticating implements _Authenticating {
  const _$_Authenticating();

  @override
  String toString() {
    return 'AuthState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Authenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() savedUser,
    required TResult Function() signedOut,
    required TResult Function(Failure failure) failure,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SavedUser value) savedUser,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class _Authenticating implements AuthState {
  const factory _Authenticating() = _$_Authenticating;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() savedUser,
    required TResult Function() signedOut,
    required TResult Function(Failure failure) failure,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SavedUser value) savedUser,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() savedUser,
    required TResult Function() signedOut,
    required TResult Function(Failure failure) failure,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SavedUser value) savedUser,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$SavedUserCopyWith<$Res> {
  factory _$SavedUserCopyWith(
          _SavedUser value, $Res Function(_SavedUser) then) =
      __$SavedUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedUserCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$SavedUserCopyWith<$Res> {
  __$SavedUserCopyWithImpl(_SavedUser _value, $Res Function(_SavedUser) _then)
      : super(_value, (v) => _then(v as _SavedUser));

  @override
  _SavedUser get _value => super._value as _SavedUser;
}

/// @nodoc

class _$_SavedUser implements _SavedUser {
  const _$_SavedUser();

  @override
  String toString() {
    return 'AuthState.savedUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SavedUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() savedUser,
    required TResult Function() signedOut,
    required TResult Function(Failure failure) failure,
  }) {
    return savedUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
  }) {
    return savedUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (savedUser != null) {
      return savedUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SavedUser value) savedUser,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) {
    return savedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
  }) {
    return savedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (savedUser != null) {
      return savedUser(this);
    }
    return orElse();
  }
}

abstract class _SavedUser implements AuthState {
  const factory _SavedUser() = _$_SavedUser;
}

/// @nodoc
abstract class _$SignedOutCopyWith<$Res> {
  factory _$SignedOutCopyWith(
          _SignedOut value, $Res Function(_SignedOut) then) =
      __$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignedOutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$SignedOutCopyWith<$Res> {
  __$SignedOutCopyWithImpl(_SignedOut _value, $Res Function(_SignedOut) _then)
      : super(_value, (v) => _then(v as _SignedOut));

  @override
  _SignedOut get _value => super._value as _SignedOut;
}

/// @nodoc

class _$_SignedOut implements _SignedOut {
  const _$_SignedOut();

  @override
  String toString() {
    return 'AuthState.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() savedUser,
    required TResult Function() signedOut,
    required TResult Function(Failure failure) failure,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SavedUser value) savedUser,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthState {
  const factory _SignedOut() = _$_SignedOut;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() savedUser,
    required TResult Function() signedOut,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? savedUser,
    TResult Function()? signedOut,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_SavedUser value) savedUser,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_SavedUser value)? savedUser,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthState {
  const factory _Failure(Failure failure) = _$_Failure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
