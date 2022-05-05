// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Recipes _$RecipesFromJson(Map<String, dynamic> json) {
  return _Recipes.fromJson(json);
}

/// @nodoc
class _$RecipesTearOff {
  const _$RecipesTearOff();

  _Recipes data({List<Recipe>? recipes}) {
    return _Recipes(
      recipes: recipes,
    );
  }

  Recipes fromJson(Map<String, Object?> json) {
    return Recipes.fromJson(json);
  }
}

/// @nodoc
const $Recipes = _$RecipesTearOff();

/// @nodoc
mixin _$Recipes {
  List<Recipe>? get recipes => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Recipe>? recipes) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Recipe>? recipes)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Recipe>? recipes)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Recipes value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Recipes value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Recipes value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipesCopyWith<Recipes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesCopyWith<$Res> {
  factory $RecipesCopyWith(Recipes value, $Res Function(Recipes) then) =
      _$RecipesCopyWithImpl<$Res>;
  $Res call({List<Recipe>? recipes});
}

/// @nodoc
class _$RecipesCopyWithImpl<$Res> implements $RecipesCopyWith<$Res> {
  _$RecipesCopyWithImpl(this._value, this._then);

  final Recipes _value;
  // ignore: unused_field
  final $Res Function(Recipes) _then;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_value.copyWith(
      recipes: recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>?,
    ));
  }
}

/// @nodoc
abstract class _$RecipesCopyWith<$Res> implements $RecipesCopyWith<$Res> {
  factory _$RecipesCopyWith(_Recipes value, $Res Function(_Recipes) then) =
      __$RecipesCopyWithImpl<$Res>;
  @override
  $Res call({List<Recipe>? recipes});
}

/// @nodoc
class __$RecipesCopyWithImpl<$Res> extends _$RecipesCopyWithImpl<$Res>
    implements _$RecipesCopyWith<$Res> {
  __$RecipesCopyWithImpl(_Recipes _value, $Res Function(_Recipes) _then)
      : super(_value, (v) => _then(v as _Recipes));

  @override
  _Recipes get _value => super._value as _Recipes;

  @override
  $Res call({
    Object? recipes = freezed,
  }) {
    return _then(_Recipes(
      recipes: recipes == freezed
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recipes implements _Recipes {
  const _$_Recipes({this.recipes});

  factory _$_Recipes.fromJson(Map<String, dynamic> json) =>
      _$$_RecipesFromJson(json);

  @override
  final List<Recipe>? recipes;

  @override
  String toString() {
    return 'Recipes.data(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Recipes &&
            const DeepCollectionEquality().equals(other.recipes, recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recipes));

  @JsonKey(ignore: true)
  @override
  _$RecipesCopyWith<_Recipes> get copyWith =>
      __$RecipesCopyWithImpl<_Recipes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Recipe>? recipes) data,
  }) {
    return data(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Recipe>? recipes)? data,
  }) {
    return data?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Recipe>? recipes)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Recipes value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Recipes value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Recipes value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipesToJson(this);
  }
}

abstract class _Recipes implements Recipes {
  const factory _Recipes({List<Recipe>? recipes}) = _$_Recipes;

  factory _Recipes.fromJson(Map<String, dynamic> json) = _$_Recipes.fromJson;

  @override
  List<Recipe>? get recipes;
  @override
  @JsonKey(ignore: true)
  _$RecipesCopyWith<_Recipes> get copyWith =>
      throw _privateConstructorUsedError;
}

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
class _$RecipeTearOff {
  const _$RecipeTearOff();

  _Recipe call(
      {bool? vegetarian,
      bool? vegan,
      int? preparationMinutes,
      int? cookingMinutes,
      int? aggregateLikes,
      String? creditsText,
      String? sourceName,
      int? id,
      String? title,
      int? readyInMinutes,
      int? servings,
      String? sourceUrl,
      String? image,
      String? imageType,
      String? summary,
      String? instructions,
      String? spoonacularSourceUrl}) {
    return _Recipe(
      vegetarian: vegetarian,
      vegan: vegan,
      preparationMinutes: preparationMinutes,
      cookingMinutes: cookingMinutes,
      aggregateLikes: aggregateLikes,
      creditsText: creditsText,
      sourceName: sourceName,
      id: id,
      title: title,
      readyInMinutes: readyInMinutes,
      servings: servings,
      sourceUrl: sourceUrl,
      image: image,
      imageType: imageType,
      summary: summary,
      instructions: instructions,
      spoonacularSourceUrl: spoonacularSourceUrl,
    );
  }

  Recipe fromJson(Map<String, Object?> json) {
    return Recipe.fromJson(json);
  }
}

/// @nodoc
const $Recipe = _$RecipeTearOff();

/// @nodoc
mixin _$Recipe {
  bool? get vegetarian => throw _privateConstructorUsedError;
  bool? get vegan => throw _privateConstructorUsedError;
  int? get preparationMinutes => throw _privateConstructorUsedError;
  int? get cookingMinutes => throw _privateConstructorUsedError;
  int? get aggregateLikes => throw _privateConstructorUsedError;
  String? get creditsText => throw _privateConstructorUsedError;
  String? get sourceName => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get readyInMinutes => throw _privateConstructorUsedError;
  int? get servings => throw _privateConstructorUsedError;
  String? get sourceUrl => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get imageType => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  String? get spoonacularSourceUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res>;
  $Res call(
      {bool? vegetarian,
      bool? vegan,
      int? preparationMinutes,
      int? cookingMinutes,
      int? aggregateLikes,
      String? creditsText,
      String? sourceName,
      int? id,
      String? title,
      int? readyInMinutes,
      int? servings,
      String? sourceUrl,
      String? image,
      String? imageType,
      String? summary,
      String? instructions,
      String? spoonacularSourceUrl});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res> implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  final Recipe _value;
  // ignore: unused_field
  final $Res Function(Recipe) _then;

  @override
  $Res call({
    Object? vegetarian = freezed,
    Object? vegan = freezed,
    Object? preparationMinutes = freezed,
    Object? cookingMinutes = freezed,
    Object? aggregateLikes = freezed,
    Object? creditsText = freezed,
    Object? sourceName = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? readyInMinutes = freezed,
    Object? servings = freezed,
    Object? sourceUrl = freezed,
    Object? image = freezed,
    Object? imageType = freezed,
    Object? summary = freezed,
    Object? instructions = freezed,
    Object? spoonacularSourceUrl = freezed,
  }) {
    return _then(_value.copyWith(
      vegetarian: vegetarian == freezed
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool?,
      vegan: vegan == freezed
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool?,
      preparationMinutes: preparationMinutes == freezed
          ? _value.preparationMinutes
          : preparationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      cookingMinutes: cookingMinutes == freezed
          ? _value.cookingMinutes
          : cookingMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      aggregateLikes: aggregateLikes == freezed
          ? _value.aggregateLikes
          : aggregateLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      creditsText: creditsText == freezed
          ? _value.creditsText
          : creditsText // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceName: sourceName == freezed
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      readyInMinutes: readyInMinutes == freezed
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      servings: servings == freezed
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceUrl: sourceUrl == freezed
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: imageType == freezed
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      spoonacularSourceUrl: spoonacularSourceUrl == freezed
          ? _value.spoonacularSourceUrl
          : spoonacularSourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) then) =
      __$RecipeCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? vegetarian,
      bool? vegan,
      int? preparationMinutes,
      int? cookingMinutes,
      int? aggregateLikes,
      String? creditsText,
      String? sourceName,
      int? id,
      String? title,
      int? readyInMinutes,
      int? servings,
      String? sourceUrl,
      String? image,
      String? imageType,
      String? summary,
      String? instructions,
      String? spoonacularSourceUrl});
}

/// @nodoc
class __$RecipeCopyWithImpl<$Res> extends _$RecipeCopyWithImpl<$Res>
    implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(_Recipe _value, $Res Function(_Recipe) _then)
      : super(_value, (v) => _then(v as _Recipe));

  @override
  _Recipe get _value => super._value as _Recipe;

  @override
  $Res call({
    Object? vegetarian = freezed,
    Object? vegan = freezed,
    Object? preparationMinutes = freezed,
    Object? cookingMinutes = freezed,
    Object? aggregateLikes = freezed,
    Object? creditsText = freezed,
    Object? sourceName = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? readyInMinutes = freezed,
    Object? servings = freezed,
    Object? sourceUrl = freezed,
    Object? image = freezed,
    Object? imageType = freezed,
    Object? summary = freezed,
    Object? instructions = freezed,
    Object? spoonacularSourceUrl = freezed,
  }) {
    return _then(_Recipe(
      vegetarian: vegetarian == freezed
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool?,
      vegan: vegan == freezed
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool?,
      preparationMinutes: preparationMinutes == freezed
          ? _value.preparationMinutes
          : preparationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      cookingMinutes: cookingMinutes == freezed
          ? _value.cookingMinutes
          : cookingMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      aggregateLikes: aggregateLikes == freezed
          ? _value.aggregateLikes
          : aggregateLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      creditsText: creditsText == freezed
          ? _value.creditsText
          : creditsText // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceName: sourceName == freezed
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      readyInMinutes: readyInMinutes == freezed
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      servings: servings == freezed
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceUrl: sourceUrl == freezed
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: imageType == freezed
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      spoonacularSourceUrl: spoonacularSourceUrl == freezed
          ? _value.spoonacularSourceUrl
          : spoonacularSourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recipe implements _Recipe {
  const _$_Recipe(
      {this.vegetarian,
      this.vegan,
      this.preparationMinutes,
      this.cookingMinutes,
      this.aggregateLikes,
      this.creditsText,
      this.sourceName,
      this.id,
      this.title,
      this.readyInMinutes,
      this.servings,
      this.sourceUrl,
      this.image,
      this.imageType,
      this.summary,
      this.instructions,
      this.spoonacularSourceUrl});

  factory _$_Recipe.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeFromJson(json);

  @override
  final bool? vegetarian;
  @override
  final bool? vegan;
  @override
  final int? preparationMinutes;
  @override
  final int? cookingMinutes;
  @override
  final int? aggregateLikes;
  @override
  final String? creditsText;
  @override
  final String? sourceName;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final int? readyInMinutes;
  @override
  final int? servings;
  @override
  final String? sourceUrl;
  @override
  final String? image;
  @override
  final String? imageType;
  @override
  final String? summary;
  @override
  final String? instructions;
  @override
  final String? spoonacularSourceUrl;

  @override
  String toString() {
    return 'Recipe(vegetarian: $vegetarian, vegan: $vegan, preparationMinutes: $preparationMinutes, cookingMinutes: $cookingMinutes, aggregateLikes: $aggregateLikes, creditsText: $creditsText, sourceName: $sourceName, id: $id, title: $title, readyInMinutes: $readyInMinutes, servings: $servings, sourceUrl: $sourceUrl, image: $image, imageType: $imageType, summary: $summary, instructions: $instructions, spoonacularSourceUrl: $spoonacularSourceUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Recipe &&
            const DeepCollectionEquality()
                .equals(other.vegetarian, vegetarian) &&
            const DeepCollectionEquality().equals(other.vegan, vegan) &&
            const DeepCollectionEquality()
                .equals(other.preparationMinutes, preparationMinutes) &&
            const DeepCollectionEquality()
                .equals(other.cookingMinutes, cookingMinutes) &&
            const DeepCollectionEquality()
                .equals(other.aggregateLikes, aggregateLikes) &&
            const DeepCollectionEquality()
                .equals(other.creditsText, creditsText) &&
            const DeepCollectionEquality()
                .equals(other.sourceName, sourceName) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.readyInMinutes, readyInMinutes) &&
            const DeepCollectionEquality().equals(other.servings, servings) &&
            const DeepCollectionEquality().equals(other.sourceUrl, sourceUrl) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.imageType, imageType) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions) &&
            const DeepCollectionEquality()
                .equals(other.spoonacularSourceUrl, spoonacularSourceUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vegetarian),
      const DeepCollectionEquality().hash(vegan),
      const DeepCollectionEquality().hash(preparationMinutes),
      const DeepCollectionEquality().hash(cookingMinutes),
      const DeepCollectionEquality().hash(aggregateLikes),
      const DeepCollectionEquality().hash(creditsText),
      const DeepCollectionEquality().hash(sourceName),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(readyInMinutes),
      const DeepCollectionEquality().hash(servings),
      const DeepCollectionEquality().hash(sourceUrl),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(imageType),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(instructions),
      const DeepCollectionEquality().hash(spoonacularSourceUrl));

  @JsonKey(ignore: true)
  @override
  _$RecipeCopyWith<_Recipe> get copyWith =>
      __$RecipeCopyWithImpl<_Recipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeToJson(this);
  }
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
      {bool? vegetarian,
      bool? vegan,
      int? preparationMinutes,
      int? cookingMinutes,
      int? aggregateLikes,
      String? creditsText,
      String? sourceName,
      int? id,
      String? title,
      int? readyInMinutes,
      int? servings,
      String? sourceUrl,
      String? image,
      String? imageType,
      String? summary,
      String? instructions,
      String? spoonacularSourceUrl}) = _$_Recipe;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$_Recipe.fromJson;

  @override
  bool? get vegetarian;
  @override
  bool? get vegan;
  @override
  int? get preparationMinutes;
  @override
  int? get cookingMinutes;
  @override
  int? get aggregateLikes;
  @override
  String? get creditsText;
  @override
  String? get sourceName;
  @override
  int? get id;
  @override
  String? get title;
  @override
  int? get readyInMinutes;
  @override
  int? get servings;
  @override
  String? get sourceUrl;
  @override
  String? get image;
  @override
  String? get imageType;
  @override
  String? get summary;
  @override
  String? get instructions;
  @override
  String? get spoonacularSourceUrl;
  @override
  @JsonKey(ignore: true)
  _$RecipeCopyWith<_Recipe> get copyWith => throw _privateConstructorUsedError;
}
