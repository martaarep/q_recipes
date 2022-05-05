import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
abstract class Recipes with _$Recipes {
  const factory Recipes.data({
    List<Recipe>? recipes,
  }) = _Recipes;

  factory Recipes.fromJson(Map<String, dynamic> json) =>
      _$RecipesFromJson(json);
}

@freezed
abstract class Recipe with _$Recipe {
  const factory Recipe({
    bool? vegetarian,
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
    String? spoonacularSourceUrl,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
