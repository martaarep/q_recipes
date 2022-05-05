import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_q/common/data/repositories/recipe_repository.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';

import 'package:flutter_tdd_q/common/domain/models/recipe.dart';

import 'package:flutter_tdd_q/features/flexiterian/presentation/pages/state/provider/flexi_recipes_notifier.dart';
import 'package:flutter_tdd_q/features/flexiterian/presentation/pages/state/provider/flexi_recipes_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:state_notifier_test/state_notifier_test.dart';

import 'flexi_recipes_notifier_test.mocks.dart';

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

  stateNotifierTest<FlexiRecipesNotifier, FlexiRecipesState>(
    'Emits [] when no methods are called',
    // Arrange - create notifier
    build: () => FlexiRecipesNotifier(mockRecipeRepository),
    // Act - call the methods
    actions: (_) {},
    // Assert
    expect: () => [],
  );

  // Group tests by FlexiRecipesNotifier methods
  group('recipes load tests', () {
    stateNotifierTest<FlexiRecipesNotifier, FlexiRecipesState>(
      'Emits [FlexiRecipesState.loading, FlexiRecipesState.loaded] when data is fetched successfully',
      // Arrange - create notifier
      build: () => FlexiRecipesNotifier(mockRecipeRepository),
      // Arrange - set up dependencies
      setUp: () async {
        when(mockRecipeRepository.getRecipes()).thenAnswer(
          (invocation) async {
            return Future<Either<Failure, Recipes>>(
              () => Future.value(right(data)),
            );
          },
        );
      },
      // Act - call the methods
      actions: (FlexiRecipesNotifier stateNotifier) async {
        await stateNotifier.loadRecipes();
      },
      // Assert
      expect: () => [
        const FlexiRecipesState.loading(),
        const FlexiRecipesState.loaded(recipes: recipes),
      ],
    );

    stateNotifierTest<FlexiRecipesNotifier, FlexiRecipesState>(
      'Emits [FlexiRecipesState.loading, FlexiRecipesState.error] when fetching data fails',
      build: () => FlexiRecipesNotifier(mockRecipeRepository),
      setUp: () async {
        when(mockRecipeRepository.getRecipes()).thenAnswer(
          (invocation) async {
            return Future<Either<Failure, Recipes>>(
              () => Future.value(left(const Failure.unexpectedDataError())),
            );
          },
        );
      },
      actions: (FlexiRecipesNotifier stateNotifier) async {
        await stateNotifier.loadRecipes();
      },
      expect: () => [
        const FlexiRecipesState.loading(),
        FlexiRecipesState.error(
            error: const Failure.unexpectedDataError().failureMessage()),
      ],
    );
  });
}
