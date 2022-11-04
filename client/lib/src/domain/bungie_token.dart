import 'package:flutter_appauth/flutter_appauth.dart';

class BungieToken extends TokenResponse {
  BungieToken(
      super.accessToken,
      super.refreshToken,
      super.accessTokenExpirationDateTime,
      super.idToken,
      super.tokenType,
      super.scopes,
      super.tokenAdditionalParameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_token': accessToken,
      'refresh_token': refreshToken,
      'access_token_expiration_date_time':
          accessTokenExpirationDateTime?.toIso8601String(),
      'id_token': idToken,
      'token_type': tokenType,
      'scopes': scopes,
      'token_additional_parameters': tokenAdditionalParameters
    };
  }

  static BungieToken fromMap(Map<String, dynamic> data) {
    final expireDate =
        DateTime.tryParse(data['access_token_expiration_date_time']);
    return BungieToken(
        data['access_token'],
        data['refresh_token'],
        expireDate,
        data['id_token'],
        data['token_type'],
        data['scopes'],
        data['token_additional_parameters']);
  }
}
