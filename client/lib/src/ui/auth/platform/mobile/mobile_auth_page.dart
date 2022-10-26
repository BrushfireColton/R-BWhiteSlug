import 'package:client/src/ui/auth/core/auth_view_model.dart';
import 'package:empire/empire.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Handles OAuth Authorization Code Grant Flow
/// Allows user to authenticate with third party service
/// and intercept and respond to the redirect after authorization
/// is successful
class MobileAuthPage extends EmpireWidget<AuthViewModel> {
  final void Function(Uri redirectUrl) onAuthCodeRedirect;
  const MobileAuthPage({
    super.key,
    required super.viewModel,
    required this.onAuthCodeRedirect,
  });

  @override
  EmpireState<EmpireWidget<EmpireViewModel>, AuthViewModel> createEmpire() => _AuthPageState(viewModel);
}

class _AuthPageState extends EmpireState<MobileAuthPage, AuthViewModel> {
  _AuthPageState(super.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: viewModel.oAuthConfig.authUrl.toString(),
          onWebViewCreated: (controller) {
            CookieManager().clearCookies();
            controller.clearCache();
          },
          navigationDelegate: (navigation) {
            if (navigation.url.contains(viewModel.oAuthConfig.redirectUrl.toString())) {
              widget.onAuthCodeRedirect(Uri.parse(navigation.url));
              return NavigationDecision.prevent;
            }

            return NavigationDecision.navigate;
          },
        ),
      ),
    );
  }
}
