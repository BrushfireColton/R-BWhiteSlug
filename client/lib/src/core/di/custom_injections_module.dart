import 'package:client/src/domain/oauth_config.dart';
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
}
