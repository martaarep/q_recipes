import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_q/common/domain/data_source_exception.dart';
import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:flutter_tdd_q/features/favorite/data/datasources/favorite_remote_data_source.dart';

abstract class IFavoriteRepository {
  Future<Either<Failure, Unit>> addToFavorites({required Recipe recipe});
  Future<Either<Failure, Unit>> removeFromFavorites({required Recipe recipe});
  Stream<Either<Failure, List<Recipe>>> getFavorites();
}

class FavoriteRepository implements IFavoriteRepository {
  final FavoriteRemoteDataSource _favoriteRemoteDataSource;
  FavoriteRepository(
    this._favoriteRemoteDataSource,
  );
  @override
  Future<Either<Failure, Unit>> addToFavorites({required Recipe recipe}) async {
    try {
      final response =
          await _favoriteRemoteDataSource.addFavorite(recipe: recipe);
      return right(response);
    } on DataSourceException catch (_) {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> removeFromFavorites(
      {required Recipe recipe}) async {
    try {
      final response =
          await _favoriteRemoteDataSource.removeFavorite(recipe: recipe);
      return right(response);
    } on DataSourceException catch (_) {
      return left(const Failure.serverError());
    }
  }

  @override
  Stream<Either<Failure, List<Recipe>>> getFavorites() async* {
    try {
      await for (final event in _favoriteRemoteDataSource.getFavorites()) {
        yield right(event);
      }
    } on DataSourceException catch (_) {
      yield left(const Failure.serverError());
    }
  }
}
