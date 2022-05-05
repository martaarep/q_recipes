import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_q/common/domain/data_source_exception.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:flutter_tdd_q/features/favorite/data/datasources/favorite_remote_data_source.dart';
import 'package:flutter_tdd_q/features/favorite/data/repositories/favorite_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'favorite_repository_test.mocks.dart';

// Mock dependencies
@GenerateMocks([FavoriteRemoteDataSource])
void main() {
  // Prepare prerequisites
  late FavoriteRemoteDataSource mockFavoriteRemoteDataSource;
  late FavoriteRepository favoriteRepository;

  setUp(() {
    mockFavoriteRemoteDataSource = MockFavoriteRemoteDataSource();
    favoriteRepository = FavoriteRepository(mockFavoriteRemoteDataSource);
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
  final listOfRecipesList = [recipes, recipes];
  final recipesStream = Stream.fromIterable(listOfRecipesList);

  // Group tests by methods from FavoriteRepository
  group('get recipes from favourites tests', () {
    void _setupSuccess() {
      when(mockFavoriteRemoteDataSource.getFavorites()).thenAnswer((_) async* {
        yield* recipesStream;
      });
    }

    void _setupError() {
      when(mockFavoriteRemoteDataSource.getFavorites()).thenAnswer((_) async* {
        yield* throw DataSourceException();
      });
    }

    test(
      'favoriteRepository.getFavorites should call favouriteRemoteDataSource.getFavorites',
      () async* {
        // Arrange
        _setupSuccess();
        // Act
        yield* favoriteRepository.getFavorites();
        // Assert
        verify(mockFavoriteRemoteDataSource.getFavorites());
      },
    );

    test(
        'should return streams with listOfRecipesList lists when favoriteRemoteDataSource successfully fetched recipes from favorites',
        () async {
      _setupSuccess();
      int i = 0;
      await favoriteRepository.getFavorites().forEach((result) {
        expect(result, right(listOfRecipesList[i]));
        i++;
      });
    });

    test(
      'should return failure when favoriteRemoteDataSource unsuccessfully fetched recipes from                               favorites',
      () async {
        _setupError();
        await favoriteRepository.getFavorites().forEach((result) {
          expect(result, left(const Failure.serverError()));
        });
      },
    );
  });

  group('add recipe to favorites tests', () {
    void _setupSuccess() {
      when(mockFavoriteRemoteDataSource.addFavorite(recipe: recipe))
          .thenAnswer((_) async => unit);
    }

    void _setupError() {
      when(mockFavoriteRemoteDataSource.addFavorite(recipe: recipe))
          .thenAnswer((_) async => throw DataSourceException());
    }

    test(
      'favoriteRepository.addToFavorites should call favoriteRemoteDataSource.addFavorite with recipe',
      () async {
        _setupSuccess();
        await favoriteRepository.addToFavorites(recipe: recipe);
        verify(mockFavoriteRemoteDataSource.addFavorite(recipe: recipe));
      },
    );

    test(
      'should return right(unit) when favoriteRemoteDataSource successfully added recipe to favorites',
      () async {
        _setupSuccess();
        final result = await favoriteRepository.addToFavorites(recipe: recipe);
        final expected = right(unit);
        expect(result, expected);
      },
    );

    test(
      'should return failure when favoriteRemoteDataSource unsuccessfully added recipe to favorites',
      () async {
        _setupError();
        final result = await favoriteRepository.addToFavorites(recipe: recipe);
        final expected = left(const Failure.serverError());
        expect(result, expected);
      },
    );
  });

  group('remove recipe from favorites tests', () {
    void _setupSuccess() {
      when(mockFavoriteRemoteDataSource.removeFavorite(recipe: recipe))
          .thenAnswer((_) async => unit);
    }

    void _setupError() {
      when(mockFavoriteRemoteDataSource.removeFavorite(recipe: recipe))
          .thenAnswer((_) async => throw DataSourceException());
    }

    test(
      'favouriteRepository.removeFromFavorites should call favoriteRemoteDataSource.removeFavorite with recipe',
      () async {
        _setupSuccess();
        await favoriteRepository.removeFromFavorites(recipe: recipe);
        verify(mockFavoriteRemoteDataSource.removeFavorite(recipe: recipe));
      },
    );

    test(
      'should return right(unit) when favoriteRemoteDataSource successfully removed recipe from favorites',
      () async {
        _setupSuccess();
        final result =
            await favoriteRepository.removeFromFavorites(recipe: recipe);
        final expected = right(unit);
        expect(result, expected);
      },
    );

    test(
      'should return failure when favoriteRemoteDataSource unsuccessfully removed recipe from favorites',
      () async {
        _setupError();
        final result =
            await favoriteRepository.removeFromFavorites(recipe: recipe);
        final expected = left(const Failure.serverError());
        expect(result, expected);
      },
    );
  });
}
