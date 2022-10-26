class OAuthConfig {
  final String apiKey;
  final String clientId;
  final String clientSecret;
  final Uri authUrl;
  final Uri tokenUrl;
  final Uri redirectUrl;

  OAuthConfig({
    required this.apiKey,
    required this.clientId,
    required this.clientSecret,
    required this.authUrl,
    required this.tokenUrl,
    required this.redirectUrl,
  });
}
