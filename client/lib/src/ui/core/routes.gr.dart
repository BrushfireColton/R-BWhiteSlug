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

import '../auth/auth_page.dart' as _i3;
import '../auth/auth_view_model.dart' as _i7;
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
    AuthRoute.name: (routeData) {
      final args = routeData.argsAs<AuthRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.AuthPage(
          key: args.key,
          viewModel: args.viewModel,
          onAuthCodeRedirect: args.onAuthCodeRedirect,
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
          AuthRoute.name,
          path: '/auth',
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
/// [_i3.AuthPage]
class AuthRoute extends _i4.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i5.Key? key,
    required _i7.AuthViewModel viewModel,
    required void Function(Uri) onAuthCodeRedirect,
  }) : super(
          AuthRoute.name,
          path: '/auth',
          args: AuthRouteArgs(
            key: key,
            viewModel: viewModel,
            onAuthCodeRedirect: onAuthCodeRedirect,
          ),
        );

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    required this.viewModel,
    required this.onAuthCodeRedirect,
  });

  final _i5.Key? key;

  final _i7.AuthViewModel viewModel;

  final void Function(Uri) onAuthCodeRedirect;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, viewModel: $viewModel, onAuthCodeRedirect: $onAuthCodeRedirect}';
  }
}
