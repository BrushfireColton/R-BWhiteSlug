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

import '../auth/core/auth_view_model.dart' as _i8;
import '../auth/platform/desktop/desktop_auth_page.dart' as _i4;
import '../auth/platform/mobile/mobile_auth_page.dart' as _i3;
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
    MobileAuthRoute.name: (routeData) {
      final args = routeData.argsAs<MobileAuthRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.MobileAuthPage(
          key: args.key,
          viewModel: args.viewModel,
          onAuthCodeRedirect: args.onAuthCodeRedirect,
        ),
      );
    },
    DesktopAuthRoute.name: (routeData) {
      final args = routeData.argsAs<DesktopAuthRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.DesktopAuthPage(
          key: args.key,
          viewModel: args.viewModel,
          onAuthCodeRedirect: args.onAuthCodeRedirect,
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
          MobileAuthRoute.name,
          path: '/mobile_auth',
        ),
        _i5.RouteConfig(
          DesktopAuthRoute.name,
          path: '/desktop_auth',
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
/// [_i3.MobileAuthPage]
class MobileAuthRoute extends _i5.PageRouteInfo<MobileAuthRouteArgs> {
  MobileAuthRoute({
    _i6.Key? key,
    required _i8.AuthViewModel viewModel,
    required void Function(Uri) onAuthCodeRedirect,
  }) : super(
          MobileAuthRoute.name,
          path: '/mobile_auth',
          args: MobileAuthRouteArgs(
            key: key,
            viewModel: viewModel,
            onAuthCodeRedirect: onAuthCodeRedirect,
          ),
        );

  static const String name = 'MobileAuthRoute';
}

class MobileAuthRouteArgs {
  const MobileAuthRouteArgs({
    this.key,
    required this.viewModel,
    required this.onAuthCodeRedirect,
  });

  final _i6.Key? key;

  final _i8.AuthViewModel viewModel;

  final void Function(Uri) onAuthCodeRedirect;

  @override
  String toString() {
    return 'MobileAuthRouteArgs{key: $key, viewModel: $viewModel, onAuthCodeRedirect: $onAuthCodeRedirect}';
  }
}

/// generated route for
/// [_i4.DesktopAuthPage]
class DesktopAuthRoute extends _i5.PageRouteInfo<DesktopAuthRouteArgs> {
  DesktopAuthRoute({
    _i6.Key? key,
    required _i8.AuthViewModel viewModel,
    required void Function(Uri) onAuthCodeRedirect,
  }) : super(
          DesktopAuthRoute.name,
          path: '/desktop_auth',
          args: DesktopAuthRouteArgs(
            key: key,
            viewModel: viewModel,
            onAuthCodeRedirect: onAuthCodeRedirect,
          ),
        );

  static const String name = 'DesktopAuthRoute';
}

class DesktopAuthRouteArgs {
  const DesktopAuthRouteArgs({
    this.key,
    required this.viewModel,
    required this.onAuthCodeRedirect,
  });

  final _i6.Key? key;

  final _i8.AuthViewModel viewModel;

  final void Function(Uri) onAuthCodeRedirect;

  @override
  String toString() {
    return 'DesktopAuthRouteArgs{key: $key, viewModel: $viewModel, onAuthCodeRedirect: $onAuthCodeRedirect}';
  }
}
