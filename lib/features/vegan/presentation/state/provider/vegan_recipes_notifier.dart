import 'package:flutter_tdd_q/common/data/repositories/recipe_repository.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'vegan_recipes_state.dart';

class VeganRecipesNotifier extends StateNotifier<VeganRecipesState> {
  final RecipeRepository _recipeRepository;

  VeganRecipesNotifier(this._recipeRepository)
      : super(const VeganRecipesState.initial());

  Future<void> loadVeganRecipes() async {
    state = const VeganRecipesState.loading();
    final result = await _recipeRepository.getRecipes(tags: ['vegan']);

    state = result.fold(
        (failure) => VeganRecipesState.error(error: failure.failureMessage()),
        (data) => VeganRecipesState.loaded(recipes: data.recipes ?? []));
  }
}
