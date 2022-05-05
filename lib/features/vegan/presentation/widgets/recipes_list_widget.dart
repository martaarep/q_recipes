import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:flutter_tdd_q/common/routes/router.gr.dart';

import '../../../../common/ui/colors.dart';
import 'heart_widget.dart';

class RecipesListWidget extends StatelessWidget {
  final List<Recipe> recipes;
  final bool disableScroll;
  const RecipesListWidget(
      {Key? key, required this.recipes, this.disableScroll = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: disableScroll
            ? const NeverScrollableScrollPhysics()
            : const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        itemCount: recipes.length,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 20);
        },
        itemBuilder: (context, index) {
          return _RecipeCard(recipe: recipes[index]);
        });
  }
}

class _RecipeCard extends StatelessWidget {
  final Recipe recipe;
  const _RecipeCard({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 18, 33, 0.08),
            blurRadius: 10,
            offset: Offset(3, 6),
          )
        ],
      ),
      child: Material(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
        color: Colors.white,
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
          onTap: () => context.router.push(
            RecipeDetailsRoute(recipe: recipe),
          ),
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      8,
                    ),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      recipe.image ??
                          'https://wallpapercave.com/wp/wp10602501.jpg',
                      fit: BoxFit.cover,
                      loadingBuilder: (context, widget, event) =>
                          const Center(child: CircularProgressIndicator()),
                      errorBuilder: (context, e, stackTrace) =>
                          const Icon(Icons.error),
                    ).image,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      recipe.title ?? 'No title',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: const TextStyle(
                          color: AppColors.grassGreen,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeartWidget(
                      recipe: recipe,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(
                          Icons.alarm,
                          size: 15,
                          color: AppColors.grassGreen,
                        ),
                        Text(
                          '${recipe.readyInMinutes} min',
                          style: const TextStyle(
                              fontSize: 14, color: AppColors.grassGreen),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
