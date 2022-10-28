import 'package:client/src/domain/oauth_config.dart';
import 'package:client/src/services/auth_service.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthService)
class AuthServiceImpl extends AuthService {
  final FlutterAppAuth _appAuth;

  AuthServiceImpl(this._appAuth);

  @override
  Future<TokenResponse?> authorize(OAuthConfig config) async {
    try {
      final authResponse = await _appAuth.authorize(
        AuthorizationRequest(
          config.clientId,
          config.redirectUrl.toString(),
          serviceConfiguration: AuthorizationServiceConfiguration(
            authorizationEndpoint: config.authUrl.toString(),
            tokenEndpoint: config.tokenUrl.toString(),
          ),
        ),
      );

      final tokenResult = await _appAuth.token(
        TokenRequest(config.clientId, config.redirectUrl.toString(),
            authorizationCode: authResponse!.authorizationCode,
            clientSecret: config.clientSecret,
            nonce: authResponse.nonce,
            codeVerifier: authResponse.codeVerifier,
            serviceConfiguration: AuthorizationServiceConfiguration(
              authorizationEndpoint: config.authUrl.toString(),
              tokenEndpoint: config.tokenUrl.toString(),
            )),
      );

      return tokenResult;
    } catch (e) {
      rethrow;
    }
  }
}
