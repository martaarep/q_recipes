import 'package:flutter_tdd_q/common/data/repositories/recipe_repository.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'flexi_recipes_state.dart';

class FlexiRecipesNotifier extends StateNotifier<FlexiRecipesState> {
  final RecipeRepository _recipeRepository;

  FlexiRecipesNotifier(this._recipeRepository)
      : super(const FlexiRecipesState.initial());

  Future<void> loadRecipes() async {
    state = const FlexiRecipesState.loading();
    final result = await _recipeRepository.getRecipes();

    state = result.fold(
        (failure) => FlexiRecipesState.error(error: failure.failureMessage()),
        (data) => FlexiRecipesState.loaded(recipes: data.recipes ?? []));
  }
}
