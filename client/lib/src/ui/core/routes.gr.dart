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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../auth/core/auth_view_model.dart' as _i10;
import '../auth/platform/desktop/desktop_auth_page.dart' as _i5;
import '../auth/platform/mobile/mobile_auth_page.dart' as _i4;
import '../home_page/home_page.dart' as _i3;
import '../home_page/home_page_view_model.dart' as _i9;
import '../splash/splash_page.dart' as _i1;
import '../vendor_screen/vendor_screen.dart' as _i2;
import '../vendor_screen/vendor_screen_view_model.dart' as _i8;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    VendorScreen.name: (routeData) {
      final args = routeData.argsAs<VendorScreenArgs>();
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.VendorScreen(
          key: args.key,
          viewModel: args.viewModel,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.HomePage(
          key: args.key,
          viewModel: args.viewModel,
        ),
      );
    },
    MobileAuthRoute.name: (routeData) {
      final args = routeData.argsAs<MobileAuthRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.MobileAuthPage(
          key: args.key,
          viewModel: args.viewModel,
          onAuthCodeRedirect: args.onAuthCodeRedirect,
        ),
      );
    },
    DesktopAuthRoute.name: (routeData) {
      final args = routeData.argsAs<DesktopAuthRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.DesktopAuthPage(
          key: args.key,
          viewModel: args.viewModel,
          onAuthCodeRedirect: args.onAuthCodeRedirect,
        ),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          VendorScreen.name,
          path: '/vendor_screen',
        ),
        _i6.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i6.RouteConfig(
          MobileAuthRoute.name,
          path: '/mobile_auth',
        ),
        _i6.RouteConfig(
          DesktopAuthRoute.name,
          path: '/desktop_auth',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.VendorScreen]
class VendorScreen extends _i6.PageRouteInfo<VendorScreenArgs> {
  VendorScreen({
    _i7.Key? key,
    required _i8.VendorScreenViewModel viewModel,
  }) : super(
          VendorScreen.name,
          path: '/vendor_screen',
          args: VendorScreenArgs(
            key: key,
            viewModel: viewModel,
          ),
        );

  static const String name = 'VendorScreen';
}

class VendorScreenArgs {
  const VendorScreenArgs({
    this.key,
    required this.viewModel,
  });

  final _i7.Key? key;

  final _i8.VendorScreenViewModel viewModel;

  @override
  String toString() {
    return 'VendorScreenArgs{key: $key, viewModel: $viewModel}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i7.Key? key,
    required _i9.HomePageViewModel viewModel,
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

  final _i7.Key? key;

  final _i9.HomePageViewModel viewModel;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, viewModel: $viewModel}';
  }
}

/// generated route for
/// [_i4.MobileAuthPage]
class MobileAuthRoute extends _i6.PageRouteInfo<MobileAuthRouteArgs> {
  MobileAuthRoute({
    _i7.Key? key,
    required _i10.AuthViewModel viewModel,
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

  final _i7.Key? key;

  final _i10.AuthViewModel viewModel;

  final void Function(Uri) onAuthCodeRedirect;

  @override
  String toString() {
    return 'MobileAuthRouteArgs{key: $key, viewModel: $viewModel, onAuthCodeRedirect: $onAuthCodeRedirect}';
  }
}

/// generated route for
/// [_i5.DesktopAuthPage]
class DesktopAuthRoute extends _i6.PageRouteInfo<DesktopAuthRouteArgs> {
  DesktopAuthRoute({
    _i7.Key? key,
    required _i10.AuthViewModel viewModel,
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

  final _i7.Key? key;

  final _i10.AuthViewModel viewModel;

  final void Function(Uri) onAuthCodeRedirect;

  @override
  String toString() {
    return 'DesktopAuthRouteArgs{key: $key, viewModel: $viewModel, onAuthCodeRedirect: $onAuthCodeRedirect}';
  }
}
