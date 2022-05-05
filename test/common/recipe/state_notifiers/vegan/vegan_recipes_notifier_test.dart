import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_q/common/data/repositories/recipe_repository.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';

import 'package:flutter_tdd_q/common/domain/models/recipe.dart';

import 'package:flutter_tdd_q/features/vegan/presentation/state/provider/vegan_recipes_notifier.dart';
import 'package:flutter_tdd_q/features/vegan/presentation/state/provider/vegan_recipes_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:state_notifier_test/state_notifier_test.dart';

import 'vegan_recipes_notifier_test.mocks.dart';

// Mock dependencies
@GenerateMocks([RecipeRepository])
void main() {
  // Prepare prerequisites
  late RecipeRepository mockRecipeRepository;

  setUp(() {
    mockRecipeRepository = MockRecipeRepository();
  });

  const data = Recipes.data(recipes: [Recipe()]);
  const recipes = [Recipe()];

  stateNotifierTest<VeganRecipesNotifier, VeganRecipesState>(
    'Emits [] when no methods are called',
    // Arrange - create notifier
    build: () => VeganRecipesNotifier(mockRecipeRepository),
    // Act - call the methods
    actions: (_) {},
    // Assert
    expect: () => [],
  );

// Group tests by VeganRecipesNotifier methods
  group('vegan recipes load tests', () {
    stateNotifierTest<VeganRecipesNotifier, VeganRecipesState>(
      'Emits [VeganRecipesState.loading, VeganRecipesState.loaded] when data is fetched successfully',
      // Arrange - create notifier
      build: () => VeganRecipesNotifier(mockRecipeRepository),
      // Arrange - set up dependencies
      setUp: () async {
        when(mockRecipeRepository.getRecipes(tags: ['vegan'])).thenAnswer(
          (invocation) async {
            return Future<Either<Failure, Recipes>>(
              () => Future.value(right(data)),
            );
          },
        );
      },
      // Act - call the methods
      actions: (VeganRecipesNotifier stateNotifier) async {
        await stateNotifier.loadVeganRecipes();
      },
      // Assert
      expect: () => [
        const VeganRecipesState.loading(),
        const VeganRecipesState.loaded(recipes: recipes),
      ],
    );

    stateNotifierTest<VeganRecipesNotifier, VeganRecipesState>(
      'Emits [VeganRecipesState.loading, VeganRecipesState.error] when data is fetched unsuccessfully',
      build: () => VeganRecipesNotifier(mockRecipeRepository),
      setUp: () async {
        when(mockRecipeRepository.getRecipes(tags: ['vegan'])).thenAnswer(
          (invocation) async {
            return Future<Either<Failure, Recipes>>(
              () => Future.value(left(const Failure.unexpectedDataError())),
            );
          },
        );
      },
      actions: (VeganRecipesNotifier stateNotifier) async {
        await stateNotifier.loadVeganRecipes();
      },
      expect: () => [
        const VeganRecipesState.loading(),
        VeganRecipesState.error(
            error: const Failure.unexpectedDataError().failureMessage()),
      ],
    );
  });
}
