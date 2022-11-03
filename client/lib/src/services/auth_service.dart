import 'package:client/src/domain/oauth_config.dart';
import 'package:flutter_appauth/flutter_appauth.dart';

abstract class AuthService {
  Future<TokenResponse?> authorize(OAuthConfig config);
}
