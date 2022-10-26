import 'package:auto_route/annotations.dart';

import 'package:auto_route/auto_route.dart';
import 'package:client/src/ui/auth/auth_page.dart';
import 'package:client/src/ui/auth/login_page.dart';
import 'package:client/src/ui/splash/splash.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: Splash, initial: true),
    MaterialRoute(page: LoginPage, path: '/login'),
    MaterialRoute(page: AuthPage, path: '/auth'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
