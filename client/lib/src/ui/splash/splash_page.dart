import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:client/src/core/di/injection.dart';
import 'package:client/src/ui/core/routes.gr.dart';
import 'package:flutter/cupertino.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Timer timer;

  @override
  void didChangeDependencies() {
    timer = Timer(const Duration(seconds: 3), () {
      AutoRouter.of(context).push(
        HomeRoute(
          viewModel: resolveInstanceOf(),
        ),
      );
    });
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/splash_image.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
