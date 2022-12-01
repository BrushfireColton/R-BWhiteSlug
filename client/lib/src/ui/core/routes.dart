import 'package:auto_route/annotations.dart';

import 'package:auto_route/auto_route.dart';
import 'package:client/src/ui/characters/character_selector_page.dart';
import 'package:client/src/ui/home_page/home_page.dart';
import 'package:client/src/ui/splash/splash_page.dart';

import '../characters/add_character_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: HomePage, path: '/home'),
    MaterialRoute(page: CharacterSelectorPage, path: '/characters'),
    MaterialRoute(page: AddCharacterPage, path: '/characters/add'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
