import 'package:auto_route/auto_route.dart';
import 'package:client/src/ui/home_page/home_page_view_model.dart';
import 'package:empire/empire.dart';
import 'package:flutter/material.dart';

import '../../core/di/injection.dart';
import '../core/routes.gr.dart';

class HomePage extends EmpireWidget<HomePageViewModel> {
  const HomePage({super.key, required super.viewModel});

  @override
  EmpireState<EmpireWidget<EmpireViewModel>, HomePageViewModel>
      createEmpire() => _HomePageState(viewModel);
}

class _HomePageState extends EmpireState<HomePage, HomePageViewModel> {
  _HomePageState(super.viewModel);

  @override
  void didChangeDependencies() {
    viewModel.checkCachedToken();
    super.didChangeDependencies();
  }

  Future<void> onAuthSuccess() async {
    AutoRouter.of(context).push(
        CharacterSelectorRoute(viewModel: await resolveInstanceOfAsync()));
  }

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
                      onPressed: () => viewModel.authorize(onAuthSuccess),
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
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
