import 'package:client/src/ui/auth/login_view_model.dart';
import 'package:empire/empire.dart';
import 'package:flutter/material.dart';

class LoginPage extends EmpireWidget<LoginViewModel> {
  const LoginPage({super.key, required super.viewModel});

  @override
  EmpireState<EmpireWidget<EmpireViewModel>, LoginViewModel> createEmpire() => _LoginPageState(viewModel);
}

class _LoginPageState extends EmpireState<LoginPage, LoginViewModel> {
  _LoginPageState(super.viewModel);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hello World'),
    );
  }
}
