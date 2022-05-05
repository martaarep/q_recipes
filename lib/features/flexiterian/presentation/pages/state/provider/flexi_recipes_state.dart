import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flexi_recipes_state.freezed.dart';

@freezed
abstract class FlexiRecipesState with _$FlexiRecipesState {
  const factory FlexiRecipesState.initial() = _Initial;
  const factory FlexiRecipesState.loading() = _Loading;
  const factory FlexiRecipesState.loaded({required List<Recipe> recipes}) = _Loaded;
  const factory FlexiRecipesState.error({required String error}) = _Error;
}
