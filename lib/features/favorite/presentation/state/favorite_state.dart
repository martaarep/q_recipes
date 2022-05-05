import 'package:flutter_tdd_q/common/domain/models/failure.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _Initial;
  const factory FavoriteState.submitting() = _Submitting;
  const factory FavoriteState.data(
      {required bool favorite, required Recipe recipe}) = _Data;
  const factory FavoriteState.error({required Failure error}) = _Error;
}
