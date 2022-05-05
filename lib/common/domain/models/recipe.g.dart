// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recipes _$$_RecipesFromJson(Map<String, dynamic> json) => _$_Recipes(
      recipes: (json['recipes'] as List<dynamic>?)
          ?.map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipesToJson(_$_Recipes instance) =>
    <String, dynamic>{
      'recipes': instance.recipes?.map((e) => e.toJson()).toList(),
    };

_$_Recipe _$$_RecipeFromJson(Map<String, dynamic> json) => _$_Recipe(
      vegetarian: json['vegetarian'] as bool?,
      vegan: json['vegan'] as bool?,
      preparationMinutes: json['preparationMinutes'] as int?,
      cookingMinutes: json['cookingMinutes'] as int?,
      aggregateLikes: json['aggregateLikes'] as int?,
      creditsText: json['creditsText'] as String?,
      sourceName: json['sourceName'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      readyInMinutes: json['readyInMinutes'] as int?,
      servings: json['servings'] as int?,
      sourceUrl: json['sourceUrl'] as String?,
      image: json['image'] as String?,
      imageType: json['imageType'] as String?,
      summary: json['summary'] as String?,
      instructions: json['instructions'] as String?,
      spoonacularSourceUrl: json['spoonacularSourceUrl'] as String?,
    );

Map<String, dynamic> _$$_RecipeToJson(_$_Recipe instance) => <String, dynamic>{
      'vegetarian': instance.vegetarian,
      'vegan': instance.vegan,
      'preparationMinutes': instance.preparationMinutes,
      'cookingMinutes': instance.cookingMinutes,
      'aggregateLikes': instance.aggregateLikes,
      'creditsText': instance.creditsText,
      'sourceName': instance.sourceName,
      'id': instance.id,
      'title': instance.title,
      'readyInMinutes': instance.readyInMinutes,
      'servings': instance.servings,
      'sourceUrl': instance.sourceUrl,
      'image': instance.image,
      'imageType': instance.imageType,
      'summary': instance.summary,
      'instructions': instance.instructions,
      'spoonacularSourceUrl': instance.spoonacularSourceUrl,
    };
