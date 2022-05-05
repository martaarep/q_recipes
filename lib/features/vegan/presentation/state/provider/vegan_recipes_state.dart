import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vegan_recipes_state.freezed.dart';

@freezed
abstract class VeganRecipesState with _$VeganRecipesState {
  const factory VeganRecipesState.initial() = _Initial;
  const factory VeganRecipesState.loading() = _Loading;
  const factory VeganRecipesState.loaded({required List<Recipe> recipes}) =
      _Loaded;
  const factory VeganRecipesState.error({required String error}) = _Error;
}
