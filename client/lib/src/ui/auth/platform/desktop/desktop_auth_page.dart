import 'package:client/src/ui/auth/core/auth_view_model.dart';
import 'package:empire/empire.dart';
import 'package:flutter/material.dart';
import 'package:webview_windows/webview_windows.dart';

/// Handles OAuth Authorization Code Grant Flow
/// Allows user to authenticate with third party service
/// and intercept and respond to the redirect after authorization
/// is successful
class DesktopAuthPage extends EmpireWidget<AuthViewModel> {
  final void Function(Uri redirectUrl) onAuthCodeRedirect;
  const DesktopAuthPage({
    super.key,
    required super.viewModel,
    required this.onAuthCodeRedirect,
  });

  @override
  EmpireState<EmpireWidget<EmpireViewModel>, AuthViewModel> createEmpire() => _AuthPageState(viewModel);
}

class _AuthPageState extends EmpireState<DesktopAuthPage, AuthViewModel> {
  final _webController = WebviewController();
  _AuthPageState(super.viewModel);

  Future<void> _initializeWebView() async {
    await _webController.initialize();
    await _webController.loadUrl(viewModel.oAuthConfig.authUrl.toString());

    _webController.url.listen((url) {
      if (url.contains(viewModel.oAuthConfig.redirectUrl.toString())) {
        widget.onAuthCodeRedirect(Uri.parse(url));
      }
    });
  }

  @override
  void didChangeDependencies() {
    _initializeWebView();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Webview(_webController),
      ),
    );
  }
}
