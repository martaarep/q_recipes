import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tdd_q/common/data/repositories/recipe_repository.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';

import 'package:flutter_tdd_q/common/domain/models/recipe.dart';

import 'package:flutter_tdd_q/common/network/api_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'recipe_repository_test.mocks.dart';

// Mock dependencies
@GenerateMocks([ApiClient])
void main() {
  // Prepare prerequisites
  late MockApiClient apiClient;
  late RecipeRepository repository;
  final tags = ['vegan'];

  setUp(() {
    apiClient = MockApiClient();
    repository = RecipeRepository(apiClient);
  });

  const recipes = Recipes.data(recipes: [
    Recipe(
        vegan: true,
        summary: 'Test recipe ready in 5 minutes.',
        title: 'Test recipe',
        readyInMinutes: 5),
    Recipe(
        vegan: true,
        summary: 'Test recipe ready in 5 minutes.',
        title: 'Test recipe',
        readyInMinutes: 5),
  ]);

  void _setupSuccess() {
    when(apiClient.getRandomRecipes()).thenAnswer((_) async => recipes);
    when(apiClient.getRandomRecipes(tags: tags))
        .thenAnswer((_) async => recipes);
  }

  void _setupError() {
    when(apiClient.getRandomRecipes())
        .thenThrow(DioError(requestOptions: RequestOptions(path: '')));
  }

  // Group tests by methods from RecipeRepository
  group('get recipes tests', () {
    test(
      'should call _apiClient.getRandomRecipes',
      () async {
        // Arrange
        _setupSuccess();
        // Act
        await repository.getRecipes();
        // Assert
        verify(apiClient.getRandomRecipes());
      },
    );
    test(
      'should call _apiClient.getRandomRecipes with tag vegan',
      () async {
        _setupSuccess();

        await repository.getRecipes(tags: tags);
        verify(apiClient.getRandomRecipes(tags: tags));
      },
    );
    test(
      'should return list of recipes when api client successfully retrieves data',
      () async {
        _setupSuccess();
        final result = await repository.getRecipes();
        final expected = right(recipes);
        expect(result, expected);
      },
    );
  });

  test(
    'should return failure when api client unsuccessfully retrieves data',
    () async {
      _setupError();
      final result = await repository.getRecipes();
      final expected = left(const Failure.offline());

      expect(result, expected);
    },
  );
}
