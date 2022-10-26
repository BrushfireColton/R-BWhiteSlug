import 'package:client/src/ui/core/routes.gr.dart';
import 'package:flutter/material.dart';

class VendorDingApp extends StatelessWidget {
  final router = AppRouter();

  VendorDingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bungie Vendor Things',
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
