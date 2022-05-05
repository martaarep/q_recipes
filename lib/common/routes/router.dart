import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd_q/features/auth/presentation/pages/sign_in_page.dart';
import 'package:flutter_tdd_q/features/favorite/presentation/pages/favorite_page.dart';
import 'package:flutter_tdd_q/features/flexiterian/presentation/pages/flexiterian_page.dart';
import 'package:flutter_tdd_q/features/main_page.dart';
import 'package:flutter_tdd_q/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter_tdd_q/features/vegan/presentation/pages/recipe_details_page.dart';
import 'package:flutter_tdd_q/features/vegan/presentation/pages/vegan_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: MainPage, children: [
      MaterialRoute(page: FlexiterianPage),
      MaterialRoute(page: FavoritePage),
      MaterialRoute(page: VeganPage)
    ]),
    MaterialRoute(page: RecipeDetailsPage)
  ],
)
class $AppRouter {}
