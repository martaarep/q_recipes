// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteListStateTearOff {
  const _$FavoriteListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded({required List<Recipe> recipes}) {
    return _Loaded(
      recipes: recipes,
    );
  }

  _Empty empty({required List<Recipe> recipes}) {
    return _Empty(
      recipes: recipes,
    );
  }

  _Error error({required Failure error}) {
    return _Error(
      error: error,
    );
  }
}

/// @nodoc
const $FavoriteListState = _$FavoriteListStateTearOff();

/// @nodoc
mixin _$FavoriteListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) empty,
    required TResult Function(Failure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? empty,
    TResult Function(Failure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? empty,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteListStateCopyWith<$Res> {
  factory $FavoriteListStateCopyWith(
          FavoriteListState value, $Res Function(FavoriteListState) then) =
      _$FavoriteListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteListStateCopyWithImpl<$Res>
    implements $FavoriteListStateCopyWith<$Res> {
  _$FavoriteListStateCopyWithImpl(this._value, this._then);

  final FavoriteListState _value;
  // ignore: unused_field
  final $Res Function(FavoriteListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FavoriteListStateCopyWithImpl<$Res>
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
    return 'FavoriteListState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) empty,
    required TResult Function(Failure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? empty,
    TResult Function(Failure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? empty,
    TResult Function(Failure error)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoriteListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$FavoriteListStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'FavoriteListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) empty,
    required TResult Function(Failure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? empty,
    TResult Function(Failure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? empty,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FavoriteListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Recipe> recipes});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$FavoriteListStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_Loaded(
      recipes: recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.recipes});

  @override
  final List<Recipe> recipes;

  @override
  String toString() {
    return 'FavoriteListState.loaded(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.recipes, recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recipes));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) empty,
    required TResult Function(Failure error) error,
  }) {
    return loaded(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? empty,
    TResult Function(Failure error)? error,
  }) {
    return loaded?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? empty,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FavoriteListState {
  const factory _Loaded({required List<Recipe> recipes}) = _$_Loaded;

  List<Recipe> get recipes;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
  $Res call({List<Recipe> recipes});
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$FavoriteListStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_Empty(
      recipes: recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty({required this.recipes});

  @override
  final List<Recipe> recipes;

  @override
  String toString() {
    return 'FavoriteListState.empty(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Empty &&
            const DeepCollectionEquality().equals(other.recipes, recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recipes));

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<_Empty> get copyWith =>
      __$EmptyCopyWithImpl<_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) empty,
    required TResult Function(Failure error) error,
  }) {
    return empty(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? empty,
    TResult Function(Failure error)? error,
  }) {
    return empty?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? empty,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements FavoriteListState {
  const factory _Empty({required List<Recipe> recipes}) = _$_Empty;

  List<Recipe> get recipes;
  @JsonKey(ignore: true)
  _$EmptyCopyWith<_Empty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({Failure error});

  $FailureCopyWith<$Res> get error;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$FavoriteListStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get error {
    return $FailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final Failure error;

  @override
  String toString() {
    return 'FavoriteListState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes) loaded,
    required TResult Function(List<Recipe> recipes) empty,
    required TResult Function(Failure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? empty,
    TResult Function(Failure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes)? loaded,
    TResult Function(List<Recipe> recipes)? empty,
    TResult Function(Failure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FavoriteListState {
  const factory _Error({required Failure error}) = _$_Error;

  Failure get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
