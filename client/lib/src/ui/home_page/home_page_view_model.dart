import 'package:client/src/core/http/oauth_http_client.dart';
import 'package:client/src/domain/oauth_config.dart';
import 'package:client/src/services/auth_service.dart';
import 'package:empire/empire.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:oauth2/oauth2.dart';

@injectable
class HomePageViewModel extends EmpireViewModel {
  final OAuthConfig oAuthConfig;
  final AuthService _authService;

  HomePageViewModel(this.oAuthConfig, this._authService);

  @override
  Iterable<EmpireProperty> get empireProps => [];

  Future<void> authorize(AuthCallback authCallback) async {
    final grant = AuthorizationCodeGrant(
      oAuthConfig.clientId,
      oAuthConfig.authUrl,
      oAuthConfig.tokenUrl,
      secret: oAuthConfig.clientSecret,
      httpClient: OAuthHttpClient(),
    );
    final authUrl = _authService.generateAuthUrl(grant, oAuthConfig.redirectUrl);
    final redirectUrl = await _authService.getRedirectUrl(authCallback, authUrl);
    final credentials = await _authService.handleAuthResponse(grant, redirectUrl.queryParameters);
    if (kDebugMode) {
      print(credentials.toJson());
    }
  }
}
