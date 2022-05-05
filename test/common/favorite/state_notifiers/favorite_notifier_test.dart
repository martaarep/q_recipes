import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:flutter_tdd_q/features/favorite/data/repositories/favorite_repository.dart';
import 'package:flutter_tdd_q/features/favorite/presentation/state/favorite_notifier.dart';
import 'package:flutter_tdd_q/features/favorite/presentation/state/favorite_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:state_notifier_test/state_notifier_test.dart';

import 'favorite_notifier_test.mocks.dart';

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

  stateNotifierTest<FavoriteNotifier, FavoriteState>(
      'Emits [] when no methods are called',
      // Arrange - create notifier
      build: () => FavoriteNotifier(mockFavoriteRepository),
      // Act - call the methods
      actions: (FavoriteNotifier stateNotifier) {},
      // Assert
      expect: () => []);

  // Group tests by FavoriteNotifier methods
  group('add favorite recipe tests', () {
    stateNotifierTest<FavoriteNotifier, FavoriteState>(
      'Emits [submitting, data] when recipe is added to favorites successfully',
      // Arrange - create notifier
      build: () => FavoriteNotifier(mockFavoriteRepository),
      // Arrange - set up dependencies
      setUp: () async {
        when(mockFavoriteRepository.addToFavorites(recipe: recipe)).thenAnswer(
          (invocation) async {
            return Future<Either<Failure, Unit>>(
              () => Future.value(right(unit)),
            );
          },
        );
      },
      // Act - call the methods
      actions: (FavoriteNotifier stateNotifier) async {
        await stateNotifier.addToFavorites(recipe: recipe);
      },
      // Assert
      expect: () => [
        const FavoriteState.submitting(),
        const FavoriteState.data(favorite: true, recipe: recipe),
      ],
    );

    stateNotifierTest<FavoriteNotifier, FavoriteState>(
      'Emits [submitting, error] when adding a recipe to favorites fails',
      build: () => FavoriteNotifier(mockFavoriteRepository),
      setUp: () async {
        when(mockFavoriteRepository.addToFavorites(recipe: recipe)).thenAnswer(
          (invocation) async {
            return Future<Either<Failure, Unit>>(
              () => Future.value(left(const Failure.serverError())),
            );
          },
        );
      },
      actions: (FavoriteNotifier stateNotifier) async {
        await stateNotifier.addToFavorites(recipe: recipe);
      },
      expect: () => [
        const FavoriteState.submitting(),
        const FavoriteState.error(error: Failure.serverError()),
      ],
    );
  });
  group('remove favourite recipe tests', () {
    stateNotifierTest<FavoriteNotifier, FavoriteState>(
      'Emits [submitting, data] when recipe is removed from favorites successfully',
      build: () => FavoriteNotifier(mockFavoriteRepository),
      setUp: () async {
        when(mockFavoriteRepository.removeFromFavorites(recipe: recipe))
            .thenAnswer(
          (invocation) async {
            return Future<Either<Failure, Unit>>(
              () => Future.value(right(unit)),
            );
          },
        );
      },
      actions: (FavoriteNotifier stateNotifier) async {
        await stateNotifier.removeFromFavorites(recipe: recipe);
      },
      expect: () => [
        const FavoriteState.submitting(),
        const FavoriteState.data(favorite: false, recipe: recipe),
      ],
    );

    stateNotifierTest<FavoriteNotifier, FavoriteState>(
      'Emits [submitting, error] when removing a recipe from favorites failed',
      build: () => FavoriteNotifier(mockFavoriteRepository),
      setUp: () async {
        when(mockFavoriteRepository.removeFromFavorites(recipe: recipe))
            .thenAnswer(
          (invocation) async {
            return Future<Either<Failure, Unit>>(
              () => Future.value(left(const Failure.serverError())),
            );
          },
        );
      },
      actions: (FavoriteNotifier stateNotifier) async {
        await stateNotifier.removeFromFavorites(recipe: recipe);
      },
      expect: () => [
        const FavoriteState.submitting(),
        const FavoriteState.error(error: Failure.serverError()),
      ],
    );
  });
}
