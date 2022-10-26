import 'package:client/src/ui/core/routes.gr.dart';
import 'package:flutter/material.dart';

class VendorCheckerThingyApp extends StatelessWidget {
  final router = AppRouter();

  VendorCheckerThingyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Destiny 2 VCT',
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
