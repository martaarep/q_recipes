import 'package:flutter/material.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:flutter_tdd_q/common/providers/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/ui/colors.dart';

class HeartWidget extends ConsumerWidget {
  const HeartWidget({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(favoriteListNotifierProvider).maybeMap(
          orElse: () => Container(),
          empty: (data) =>
              _HeartButtonWidget(recipes: data.recipes, recipe: recipe),
          loaded: (data) =>
              _HeartButtonWidget(recipes: data.recipes, recipe: recipe),
        );
  }
}

class _HeartButtonWidget extends ConsumerWidget {
  final Recipe recipe;
  final List<Recipe> recipes;
  const _HeartButtonWidget(
      {required this.recipes, required this.recipe, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
        onTap: () => recipes.any((element) => element.id == recipe.id)
            ? ref
                .read(favoriteNotifierProvider.notifier)
                .removeFromFavorites(recipe: recipe)
            : ref
                .read(favoriteNotifierProvider.notifier)
                .addToFavorites(recipe: recipe),
        child: SizedBox(
          width: 30,
          height: 30,
          child: FittedBox(
            child: AnimatedCrossFade(
              firstChild: const Icon(
                Icons.favorite,
                color: Colors.grey,
                size: 15,
              ),
              secondChild: const Icon(
                Icons.favorite,
                color: AppColors.rose,
                size: 15,
              ),
              crossFadeState: recipes.any((element) => element.id == recipe.id)
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(
                milliseconds: 100,
              ),
            ),
          ),
        ));
  }
}
