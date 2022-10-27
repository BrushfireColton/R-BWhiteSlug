import 'package:auto_route/annotations.dart';

import 'package:auto_route/auto_route.dart';
import 'package:client/src/ui/auth/platform/desktop/desktop_auth_page.dart';
import 'package:client/src/ui/auth/platform/mobile/mobile_auth_page.dart';
import 'package:client/src/ui/home_page/home_page.dart';
import 'package:client/src/ui/splash/splash_page.dart';
import 'package:client/src/ui/vendor_screen/vendor_screen.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: VendorScreen, path: '/vendor_screen'),
    MaterialRoute(page: HomePage, path: '/home'),
    MaterialRoute(page: MobileAuthPage, path: '/mobile_auth'),
    MaterialRoute(page: DesktopAuthPage, path: '/desktop_auth'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
