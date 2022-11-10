class BungieToken {
  final String? accessToken;

  final String? refreshToken;

  final DateTime? accessTokenExpirationDateTime;

  final String? idToken;

  final String? tokenType;

  final List<String>? scopes;

  final Map<String, dynamic>? tokenAdditionalParameters;

  bool get hasAccessToken => accessToken != null;

  bool get hasExpired => accessTokenExpirationDateTime?.isBefore(DateTime.now()) ?? false;

  BungieToken({
    this.accessToken,
    this.refreshToken,
    this.accessTokenExpirationDateTime,
    this.idToken,
    this.tokenType,
    this.scopes,
    this.tokenAdditionalParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_token': accessToken,
      'refresh_token': refreshToken,
      'access_token_expiration_date_time': accessTokenExpirationDateTime?.toIso8601String(),
      'id_token': idToken,
      'token_type': tokenType,
      'scopes': scopes,
      'token_additional_parameters': tokenAdditionalParameters
    };
  }

  static BungieToken fromMap(Map<String, dynamic> data) {
    final expireDate = DateTime.tryParse(data['access_token_expiration_date_time']);
    return BungieToken(
      accessToken: data['access_token'],
      refreshToken: data['refresh_token'],
      accessTokenExpirationDateTime: expireDate,
      idToken: data['id_token'],
      tokenType: data['token_type'],
      scopes: data['scopes'],
      tokenAdditionalParameters: data['token_additional_parameters'],
    );
  }
}
