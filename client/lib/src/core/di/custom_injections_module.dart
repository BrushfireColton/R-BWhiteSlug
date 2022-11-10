import 'package:client/src/core/services/http_service_config.dart';
import 'package:client/src/domain/bungie_token.dart';
import 'package:client/src/domain/oauth_config.dart';
import 'package:client/src/services/local_cache_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CustomInjectionsModule {
  @lazySingleton
  OAuthConfig getOAuthConfig() {
    return OAuthConfig(
      apiKey: dotenv.get('API_KEY'),
      clientId: dotenv.get('CLIENT_ID'),
      clientSecret: dotenv.get('CLIENT_SECRET'),
      authUrl: Uri.parse(dotenv.get('AUTH_URL')),
      tokenUrl: Uri.parse(dotenv.get('TOKEN_URL')),
      redirectUrl: Uri.parse(
        dotenv.get('REDIRECT_URL'),
      ),
    );
  }

  @factoryMethod
  Future<BungieToken> getAuthToken(LocalCacheService cacheService) async {
    final token = await cacheService.getMap(LocalCacheService.tokenKey);

    if (token != null) {
      return BungieToken.fromMap(token);
    }

    return BungieToken();
  }

  @factoryMethod
  HttpServiceConfig getHttpServiceConfig(BungieToken bungieToken) {
    return HttpServiceConfig(dotenv.get('BASE_URL'), bungieToken);
  }
}
