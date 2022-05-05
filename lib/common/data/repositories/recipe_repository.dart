import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';

import 'package:flutter_tdd_q/common/network/api_client.dart';

abstract class IRecipeRepository {
  Future<Either<Failure, Recipes>> getRecipes(
      {int? number, List<String>? tags});
}

class RecipeRepository implements IRecipeRepository {
  final ApiClient _api;

  RecipeRepository(
    this._api,
  );

  @override
  Future<Either<Failure, Recipes>> getRecipes(
      {int? number, List<String>? tags}) async {
    try {
      final response = await _api.getRandomRecipes(tags: tags);
      return right(response);
    } on DioError catch (e) {
      return left(e.handleFailure());
    }
  }
}
