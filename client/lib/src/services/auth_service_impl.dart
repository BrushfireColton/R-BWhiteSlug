import 'package:client/src/domain/bungie_token.dart';
import 'package:client/src/domain/oauth_config.dart';
import 'package:client/src/services/auth_service.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthService)
class AuthServiceImpl extends AuthService {
  final FlutterAppAuth _appAuth;

  AuthServiceImpl(this._appAuth);

  @override
  Future<BungieToken?> authorize(OAuthConfig config) async {
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
      if (tokenResult == null) {
        return null;
      }
      return BungieToken(
          tokenResult.accessToken,
          tokenResult.refreshToken,
          tokenResult.accessTokenExpirationDateTime,
          tokenResult.idToken,
          tokenResult.tokenType,
          tokenResult.scopes,
          tokenResult.tokenAdditionalParameters);
    } catch (e) {
      rethrow;
    }
  }
}
