import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tdd_q/features/favorite/data/repositories/favorite_repository.dart';
import 'package:flutter_tdd_q/features/favorite/presentation/state/favorite_list_state.dart';

class FavoriteListNotifier extends StateNotifier<FavoriteListState> {
  final FavoriteRepository _favoriteRepository;
  late StreamSubscription _streamSubscription;

  FavoriteListNotifier(
    this._favoriteRepository,
  ) : super(const FavoriteListState.initial());

  Future<void> getFavorites() async {
    state = const FavoriteListState.loading();

    _streamSubscription = _favoriteRepository.getFavorites().listen((result) {
      state = result.fold(
        (l) => FavoriteListState.error(error: l),
        (r) {
          if (r.isEmpty) return const FavoriteListState.empty(recipes: []);
          return FavoriteListState.loaded(recipes: r);
        },
      );
    });

    @override
    Future<void> close() {
      return _streamSubscription.cancel();
    }
  }
}
