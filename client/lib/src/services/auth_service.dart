import 'package:client/src/domain/bungie_token.dart';
import 'package:client/src/domain/oauth_config.dart';

abstract class AuthService {
  Future<BungieToken?> authorize(OAuthConfig config);
}
