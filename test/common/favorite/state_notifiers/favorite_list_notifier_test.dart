import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:flutter_tdd_q/features/favorite/data/repositories/favorite_repository.dart';
import 'package:flutter_tdd_q/features/favorite/presentation/state/favorite_list_notifier.dart';
import 'package:flutter_tdd_q/features/favorite/presentation/state/favorite_list_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:state_notifier_test/state_notifier_test.dart';

import 'favorite_list_notifier_test.mocks.dart';

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

  stateNotifierTest<FavoriteListNotifier, FavoriteListState>(
      'Emits [] when no methods are called',
      // Arrange - create notifier
      build: () => FavoriteListNotifier(mockFavoriteRepository),
      // Act - call the methods
      actions: (_) {},
      // Assert
      expect: () => []);

  // Group tests by FavoriteListNotifier methods
  group('get favorite recipes tests', () {
    stateNotifierTest<FavoriteListNotifier, FavoriteListState>(
      'Emits [loading, loaded] when recipe is fetched from favorites successfully',
      // Arrange - create notifier
      build: () => FavoriteListNotifier(mockFavoriteRepository),
      // Arrange - set up dependencies
      setUp: () {
        when(mockFavoriteRepository.getFavorites()).thenAnswer((_) {
          return recipesStream;
        });
      },
      // Act - call the methods
      actions: (FavoriteListNotifier stateNotifier) async {
        await stateNotifier.getFavorites();
      },
      // Assert
      expect: () => [
        const FavoriteListState.loading(),
        const FavoriteListState.loaded(recipes: [...recipes]),
      ],
    );

    stateNotifierTest<FavoriteListNotifier, FavoriteListState>(
      'Emits [loading, error] when fetching recipes from favorites fails',
      build: () => FavoriteListNotifier(mockFavoriteRepository),
      setUp: () async {
        when(mockFavoriteRepository.getFavorites()).thenAnswer((_) {
          final streamController =
              StreamController<Either<Failure, List<Recipe>>>();
          streamController.add(left(const Failure.serverError()));
          return streamController.stream;
        });
      },
      actions: (FavoriteListNotifier stateNotifier) async {
        await stateNotifier.getFavorites();
      },
      expect: () => [
        const FavoriteListState.loading(),
        const FavoriteListState.error(error: Failure.serverError()),
      ],
    );
  });
}
