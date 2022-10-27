import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:client/src/core/di/injection.dart';
import 'package:client/src/ui/core/routes.gr.dart';
import 'package:client/src/ui/home_page/home_page_view_model.dart';
import 'package:empire/empire.dart';
import 'package:flutter/material.dart';

class HomePage extends EmpireWidget<HomePageViewModel> {
  const HomePage({super.key, required super.viewModel});

  @override
  EmpireState<EmpireWidget<EmpireViewModel>, HomePageViewModel>
      createEmpire() => _HomePageState(viewModel);
}

class _HomePageState extends EmpireState<HomePage, HomePageViewModel> {
  _HomePageState(super.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Text(
                        'Vendor Checker Thingy',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        viewModel.authorize((authUrl) {
                          final completer = Completer<Uri>();

                          if (Platform.isWindows) {
                            AutoRouter.of(context).push(
                              DesktopAuthRoute(
                                viewModel: resolveInstanceOf(),
                                onAuthCodeRedirect: (redirectUrl) =>
                                    completer.complete(redirectUrl),
                              ),
                            );
                          } else {
                            AutoRouter.of(context).push(
                              VendorScreen(
                                viewModel: resolveInstanceOf(),
                              ),
                            );
                          }

                          return completer.future;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.deepOrange),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Authorize With Bungie',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Image.asset(
                        'assets/images/d2_logo.png',
                        width: 128,
                        height: 128,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
