import 'package:flutter/material.dart';
import 'package:flutter_tdd_q/common/providers/providers.dart';
import 'package:flutter_tdd_q/common/ui/colors.dart';
import 'package:flutter_tdd_q/common/utils/favorite_alerting_extension.dart';
import 'package:flutter_tdd_q/features/flexiterian/presentation/pages/state/provider/flexi_recipes_state.dart';
import 'package:flutter_tdd_q/features/vegan/presentation/widgets/circular_loader_widget.dart';
import 'package:flutter_tdd_q/features/vegan/presentation/widgets/recipes_list_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FlexiterianPage extends StatelessWidget {
  const FlexiterianPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: _FlexiterianRecipesBody(),
    );
  }
}

class _FlexiterianRecipesBody extends ConsumerWidget {
  const _FlexiterianRecipesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(initializationRecipesProviders);
    ref.watch(initializationFavoriteListProvider);
    ref.favoriteStateListener(context);
    return RefreshIndicator(
      color: AppColors.lightestGreen,
      onRefresh: () =>
          ref.read(flexiRecipesNotifierProvider.notifier).loadRecipes(),
      child: ref.watch<FlexiRecipesState>(flexiRecipesNotifierProvider).when(
          initial: () => const CircularLoader(),
          loading: () => const CircularLoader(),
          loaded: (recipes) => RecipesListWidget(
                recipes: recipes,
              ),
          error: (error) => Center(child: Text(error))),
    );
  }
}
