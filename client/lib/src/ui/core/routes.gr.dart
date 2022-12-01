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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../characters/add_character_page.dart' as _i4;
import '../characters/add_character_view_model.dart' as _i9;
import '../characters/character_selector_page.dart' as _i3;
import '../characters/character_selector_view_model.dart' as _i8;
import '../home_page/home_page.dart' as _i2;
import '../home_page/home_page_view_model.dart' as _i7;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.HomePage(
          key: args.key,
          viewModel: args.viewModel,
        ),
      );
    },
    CharacterSelectorRoute.name: (routeData) {
      final args = routeData.argsAs<CharacterSelectorRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.CharacterSelectorPage(
          key: args.key,
          viewModel: args.viewModel,
        ),
      );
    },
    AddCharacterRoute.name: (routeData) {
      final args = routeData.argsAs<AddCharacterRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.AddCharacterPage(
          key: args.key,
          viewModel: args.viewModel,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i5.RouteConfig(
          CharacterSelectorRoute.name,
          path: '/characters',
        ),
        _i5.RouteConfig(
          AddCharacterRoute.name,
          path: '/characters/add',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i6.Key? key,
    required _i7.HomePageViewModel viewModel,
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

  final _i6.Key? key;

  final _i7.HomePageViewModel viewModel;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, viewModel: $viewModel}';
  }
}

/// generated route for
/// [_i3.CharacterSelectorPage]
class CharacterSelectorRoute
    extends _i5.PageRouteInfo<CharacterSelectorRouteArgs> {
  CharacterSelectorRoute({
    _i6.Key? key,
    required _i8.CharacterSelectorViewModel viewModel,
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

  final _i6.Key? key;

  final _i8.CharacterSelectorViewModel viewModel;

  @override
  String toString() {
    return 'CharacterSelectorRouteArgs{key: $key, viewModel: $viewModel}';
  }
}

/// generated route for
/// [_i4.AddCharacterPage]
class AddCharacterRoute extends _i5.PageRouteInfo<AddCharacterRouteArgs> {
  AddCharacterRoute({
    _i6.Key? key,
    required _i9.AddCharacterViewModel viewModel,
  }) : super(
          AddCharacterRoute.name,
          path: '/characters/add',
          args: AddCharacterRouteArgs(
            key: key,
            viewModel: viewModel,
          ),
        );

  static const String name = 'AddCharacterRoute';
}

class AddCharacterRouteArgs {
  const AddCharacterRouteArgs({
    this.key,
    required this.viewModel,
  });

  final _i6.Key? key;

  final _i9.AddCharacterViewModel viewModel;

  @override
  String toString() {
    return 'AddCharacterRouteArgs{key: $key, viewModel: $viewModel}';
  }
}
