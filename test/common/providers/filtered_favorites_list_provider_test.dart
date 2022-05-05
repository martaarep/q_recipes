import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:flutter_tdd_q/common/providers/providers.dart';
import 'package:flutter_tdd_q/features/favorite/data/repositories/favorite_repository.dart';
import 'package:flutter_tdd_q/features/favorite/presentation/state/favorite_list_notifier.dart';
import 'package:flutter_tdd_q/features/favorite/presentation/state/favorite_list_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'filtered_favorites_list_provider_test.mocks.dart';

// Mock dependencies
@GenerateMocks([FavoriteRepository])
void main() {
  // Prepare prerequisites
  late FavoriteRepository mockFavoriteRepository;

  setUp(() {
    mockFavoriteRepository = MockFavoriteRepository();
  });
  const recipe = Recipe(
      vegan: false,
      summary: 'Test recipe ready in 5 minutes.',
      title: 'Test recipe',
      readyInMinutes: 5);
  const recipeVegan = Recipe(
      vegan: true,
      summary: 'Test recipe ready in 5 minutes.',
      title: 'Test recipe',
      readyInMinutes: 5);
  const recipes = [recipe, recipeVegan];
  final successListOfRecipesList = <Either<Failure, List<Recipe>>>[
    right(recipes),
  ];
  final recipesStream = Stream<Either<Failure, List<Recipe>>>.fromIterable(
      successListOfRecipesList);
  final filteredRecipes =
      recipes.where((element) => element.vegan == true).toList();

  group('filter favourite recipes tests', () {
    void setUpSuccess() {
      when(mockFavoriteRepository.getFavorites()).thenAnswer((_) {
        return recipesStream;
      });
    }

    test(
        'filtered favorites list provider should return list with all recipes initially',
        () async* {
      // Arrange - create container that stores the state of providers
      // Arrange - override behaviour of filterProvider and set up dependencies
      setUpSuccess();
      final container = ProviderContainer(
        overrides: [
          favoriteListNotifierProvider.overrideWithProvider(
              AutoDisposeStateNotifierProvider(
                  (ref) => FavoriteListNotifier(mockFavoriteRepository))),
        ],
      );
      // Act
      yield mockFavoriteRepository.getFavorites();
      // Assert
      expect(container.read(filteredFavoritesListProvider), recipes);
    });
    test(
        'filtered favorites list provider should return list with vegan recipes after filterProviders state changes to FilterFavorites.vegan',
        () async* {
      setUpSuccess();
      final container = ProviderContainer(
        overrides: [
          favoriteListNotifierProvider.overrideWithProvider(
              AutoDisposeStateNotifierProvider(
                  (ref) => FavoriteListNotifier(mockFavoriteRepository))),
          filterProvider.overrideWithProvider(
              StateProvider((ref) => FilterFavorites.vegan)),
        ],
      );
      yield mockFavoriteRepository.getFavorites();
      expect(container.read(filteredFavoritesListProvider), filteredRecipes);
    });
    test(
        'filtered favorites list provider should return list with all recipes after filterProviders state changes to FilterFavorites.all',
        () async* {
      setUpSuccess();
      final container = ProviderContainer(
        overrides: [
          favoriteListNotifierProvider.overrideWithProvider(
              AutoDisposeStateNotifierProvider(
                  (ref) => FavoriteListNotifier(mockFavoriteRepository))),
          filterProvider.overrideWithProvider(
              StateProvider((ref) => FilterFavorites.all)),
        ],
      );
      yield mockFavoriteRepository.getFavorites();
      expect(container.read(filteredFavoritesListProvider), recipes);
    });
  });
}
