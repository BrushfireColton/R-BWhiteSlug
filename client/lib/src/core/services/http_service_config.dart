import 'package:client/src/domain/bungie_token.dart';

class HttpServiceConfig {
  final String baseUrl;
  final BungieToken bungieToken;

  HttpServiceConfig(this.baseUrl, this.bungieToken);
}
