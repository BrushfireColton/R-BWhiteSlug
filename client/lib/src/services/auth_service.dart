import 'package:client/src/domain/oauth_config.dart';
import 'package:flutter_appauth/flutter_appauth.dart';

typedef AuthCallback = Future<Uri> Function(Uri authUrl);

abstract class AuthService {
  Future<TokenResponse?> authorize(OAuthConfig config);
}
