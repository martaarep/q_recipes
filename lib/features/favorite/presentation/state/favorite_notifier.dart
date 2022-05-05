import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:flutter_tdd_q/features/favorite/data/repositories/favorite_repository.dart';
import 'package:flutter_tdd_q/features/favorite/presentation/state/favorite_state.dart';

class FavoriteNotifier extends StateNotifier<FavoriteState> {
  final FavoriteRepository _favouriteRepository;

  FavoriteNotifier(this._favouriteRepository)
      : super(const FavoriteState.initial());

  Future<void> addToFavorites({required Recipe recipe}) async {
    state = const FavoriteState.submitting();
    final response = await _favouriteRepository.addToFavorites(recipe: recipe);

    state = response.fold(
      (l) => FavoriteState.error(error: l),
      (r) => FavoriteState.data(recipe: recipe, favorite: true),
    );
  }

  Future<void> removeFromFavorites({required Recipe recipe}) async {
    state = const FavoriteState.submitting();
    final response =
        await _favouriteRepository.removeFromFavorites(recipe: recipe);

    state = response.fold(
      (l) => FavoriteState.error(error: l),
      (r) => FavoriteState.data(recipe: recipe, favorite: false),
    );
  }
}
