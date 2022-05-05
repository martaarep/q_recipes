import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_tdd_q/common/domain/models/recipe.dart';
import 'package:flutter_tdd_q/common/ui/colors.dart';
import 'package:flutter_tdd_q/features/vegan/presentation/widgets/heart_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/circle_icon_button_widget.dart';
import '../widgets/sliver_app_bar_title_widget.dart';
part '../widgets/recipe_details_widgets.dart';

class RecipeDetailsPage extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetailsPage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: _RecipeDetailsBody(recipe: recipe)),
    );
  }
}

class _RecipeDetailsBody extends StatelessWidget {
  final Recipe recipe;
  const _RecipeDetailsBody({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          backgroundColor: AppColors.lightestGreen,
          elevation: 0,
          leading: CircleIconButton(
            buttonColor: AppColors.lightestGreen,
            height: 50,
            iconColor: AppColors.darkestGreen,
            width: 50,
            icon: Icons.arrow_back_outlined,
            onPressed: () => context.router.pop(),
          ),
          title: const SliverAppbarTitle(
            child: Center(
              child: _AppBarTitle(),
            ),
          ),
          expandedHeight: MediaQuery.of(context).size.height * 0.40,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: _SliverBackgroundImage(recipe: recipe),
          ),
        ),
        _RecipeInformationListWidget(recipe: recipe),
      ],
    );
  }
}

class _RecipeInformationListWidget extends StatelessWidget {
  final Recipe recipe;

  const _RecipeInformationListWidget({Key? key, required this.recipe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                _RecipeTitle(recipe: recipe, textTheme: textTheme),
                const SizedBox(height: 30),
                const Divider(),
                _RecipeNumberDetails(recipe: recipe, textTheme: textTheme),
                const Divider(),
                _RecipeInstructions(textTheme: textTheme, recipe: recipe),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _launchURL(url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}
