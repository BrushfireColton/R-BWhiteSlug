import 'package:auto_route/annotations.dart';

import 'package:auto_route/auto_route.dart';
import 'package:client/src/ui/home_page/home_page.dart';
import 'package:client/src/ui/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: HomePage, path: '/home'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
