part of '../pages/recipe_details_page.dart';

class _RecipeNumberDetails extends StatelessWidget {
  const _RecipeNumberDetails({
    Key? key,
    required this.recipe,
    required this.textTheme,
  }) : super(key: key);

  final Recipe recipe;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(children: [
                const WidgetSpan(
                    child:
                        Icon(Icons.restaurant, color: Colors.orange, size: 15)),
                TextSpan(
                    text: "${recipe.servings}",
                    style: textTheme.bodyText2!.apply(fontWeightDelta: 4))
              ])),
          RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(children: [
                const WidgetSpan(
                  child: Icon(Icons.access_time_sharp,
                      color: Colors.red, size: 15),
                ),
                TextSpan(
                    text: "${recipe.readyInMinutes} min",
                    style: textTheme.bodyText2!.apply(fontWeightDelta: 4))
              ])),
          RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(children: [
                const WidgetSpan(
                    child: Icon(Icons.star, color: Colors.green, size: 15)),
                TextSpan(
                  text: "${recipe.aggregateLikes}",
                  style: textTheme.bodyText2!.apply(fontWeightDelta: 4),
                ),
              ])),
        ],
      ),
    );
  }
}

class _RecipeInstructions extends StatelessWidget {
  const _RecipeInstructions({
    Key? key,
    required this.textTheme,
    required this.recipe,
  }) : super(key: key);

  final TextTheme textTheme;
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Recipe",
            style: textTheme.headline6,
          ),
        ),
        const SizedBox(height: 10),
        Html(
          data: "${recipe.summary}",
          onLinkTap: (url, context, _, __) => _launchURL(url),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _RecipeTitle extends StatelessWidget {
  const _RecipeTitle({
    Key? key,
    required this.recipe,
    required this.textTheme,
  }) : super(key: key);

  final Recipe recipe;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.65,
          child: Text(
            "${recipe.title}",
            style: textTheme.headline5,
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
        ),
        HeartWidget(
          recipe: recipe,
        ),
      ],
    );
  }
}

class _SliverBackgroundImage extends StatelessWidget {
  const _SliverBackgroundImage({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffE2F3D4),
        image: DecorationImage(
            image: Image.network(
              recipe.image ?? 'https://wallpapercave.com/w/wp10602501',
              fit: BoxFit.cover,
              loadingBuilder: (context, widget, event) =>
                  const Center(child: CircularProgressIndicator()),
              errorBuilder: (context, e, stackTrace) => const Icon(Icons.error),
            ).image,
            fit: BoxFit.cover),
      ),
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/food.png',
          height: 40,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          'Q recipes',
          style: TextStyle(color: AppColors.darkestGreen, fontSize: 24),
        ),
      ],
    );
  }
}
