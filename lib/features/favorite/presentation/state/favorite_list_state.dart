import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_list_state.freezed.dart';

@freezed
class FavoriteListState with _$FavoriteListState {
  const factory FavoriteListState.initial() = _Initial;
  const factory FavoriteListState.loading() = _Loading;
  const factory FavoriteListState.loaded({required List<Recipe> recipes}) =
      _Loaded;
  const factory FavoriteListState.empty({required List<Recipe> recipes}) =
      _Empty;
  const factory FavoriteListState.error({required Failure error}) = _Error;
}

enum FilterFavorites { vegan, all }

extension FilterExtension on FilterFavorites {
  String getFiltersString() {
    switch (this) {
      case FilterFavorites.all:
        return "ALL";
      case FilterFavorites.vegan:
        return "VEGAN";
    }
  }
}

List<String> getListOfFilters() => ["ALL", "VEGAN"];
