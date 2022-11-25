// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../characters/character_selector_page.dart' as _i3;
import '../characters/character_selector_view_model.dart' as _i7;
import '../home_page/home_page.dart' as _i2;
import '../home_page/home_page_view_model.dart' as _i6;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.HomePage(
          key: args.key,
          viewModel: args.viewModel,
        ),
      );
    },
    CharacterSelectorRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterSelectorRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.CharacterSelectorPage(
          key: args.key,
          viewModel: args.viewModel,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i4.RouteConfig(
          CharacterSelectorRoute.name,
          path: '/characters',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i5.Key? key,
    required _i6.HomePageViewModel viewModel,
  }) : super(
          HomeRoute.name,
          path: '/home',
          args: HomeRouteArgs(
            key: key,
            viewModel: viewModel,
          ),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    required this.viewModel,
  });

  final _i5.Key? key;

  final _i6.HomePageViewModel viewModel;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, viewModel: $viewModel}';
  }
}

/// generated route for
/// [_i3.CharacterSelectorPage]
class CharacterSelectorRoute
    extends _i4.PageRouteInfo<CharacterSelectorRouteArgs> {
  CharacterSelectorRoute({
    _i5.Key? key,
    required _i7.CharacterSelectorViewModel viewModel,
  }) : super(
          CharacterSelectorRoute.name,
          path: '/characters',
          args: CharacterSelectorRouteArgs(
            key: key,
            viewModel: viewModel,
          ),
        );

  static const String name = 'CharacterSelectorRoute';
}

class CharacterSelectorRouteArgs {
  const CharacterSelectorRouteArgs({
    this.key,
    required this.viewModel,
  });

  final _i5.Key? key;

  final _i7.CharacterSelectorViewModel viewModel;

  @override
  String toString() {
    return 'CharacterSelectorRouteArgs{key: $key, viewModel: $viewModel}';
  }
}
