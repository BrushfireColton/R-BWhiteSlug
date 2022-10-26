import 'package:oauth2/oauth2.dart';

typedef AuthCallback = Future<Uri> Function(Uri authUrl);

abstract class AuthService {
  Uri generateAuthUrl(AuthorizationCodeGrant grant, Uri redirectUrl);
  Future<Uri> getRedirectUrl(AuthCallback authCallback, Uri authUrl);
  Future<Credentials> handleAuthResponse(
      AuthorizationCodeGrant grant, Map<String, String> redirectUrlQueryParams);
}
