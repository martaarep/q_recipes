// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../features/auth/presentation/pages/sign_in_page.dart' as _i2;
import '../../features/favorite/presentation/pages/favorite_page.dart' as _i6;
import '../../features/flexiterian/presentation/pages/flexiterian_page.dart'
    as _i5;
import '../../features/main_page.dart' as _i3;
import '../../features/splash/presentation/pages/splash_page.dart' as _i1;
import '../../features/vegan/presentation/pages/recipe_details_page.dart'
    as _i4;
import '../../features/vegan/presentation/pages/vegan_page.dart' as _i7;
import '../domain/models/recipe.dart' as _i10;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    MainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MainPage());
    },
    RecipeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeDetailsRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.RecipeDetailsPage(key: args.key, recipe: args.recipe));
    },
    FlexiterianRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.FlexiterianPage());
    },
    FavoriteRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.FavoritePage());
    },
    VeganRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.VeganPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashRoute.name, path: '/'),
        _i8.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i8.RouteConfig(MainRoute.name, path: '/main-page', children: [
          _i8.RouteConfig(FlexiterianRoute.name,
              path: 'flexiterian-page', parent: MainRoute.name),
          _i8.RouteConfig(FavoriteRoute.name,
              path: 'favorite-page', parent: MainRoute.name),
          _i8.RouteConfig(VeganRoute.name,
              path: 'vegan-page', parent: MainRoute.name)
        ]),
        _i8.RouteConfig(RecipeDetailsRoute.name, path: '/recipe-details-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/main-page', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i4.RecipeDetailsPage]
class RecipeDetailsRoute extends _i8.PageRouteInfo<RecipeDetailsRouteArgs> {
  RecipeDetailsRoute({_i9.Key? key, required _i10.Recipe recipe})
      : super(RecipeDetailsRoute.name,
            path: '/recipe-details-page',
            args: RecipeDetailsRouteArgs(key: key, recipe: recipe));

  static const String name = 'RecipeDetailsRoute';
}

class RecipeDetailsRouteArgs {
  const RecipeDetailsRouteArgs({this.key, required this.recipe});

  final _i9.Key? key;

  final _i10.Recipe recipe;

  @override
  String toString() {
    return 'RecipeDetailsRouteArgs{key: $key, recipe: $recipe}';
  }
}

/// generated route for
/// [_i5.FlexiterianPage]
class FlexiterianRoute extends _i8.PageRouteInfo<void> {
  const FlexiterianRoute()
      : super(FlexiterianRoute.name, path: 'flexiterian-page');

  static const String name = 'FlexiterianRoute';
}

/// generated route for
/// [_i6.FavoritePage]
class FavoriteRoute extends _i8.PageRouteInfo<void> {
  const FavoriteRoute() : super(FavoriteRoute.name, path: 'favorite-page');

  static const String name = 'FavoriteRoute';
}

/// generated route for
/// [_i7.VeganPage]
class VeganRoute extends _i8.PageRouteInfo<void> {
  const VeganRoute() : super(VeganRoute.name, path: 'vegan-page');

  static const String name = 'VeganRoute';
}
