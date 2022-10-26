import 'package:client/src/services/auth_service.dart';
import 'package:injectable/injectable.dart';
import 'package:oauth2/oauth2.dart';

@Injectable(as: AuthService)
class AuthServiceImpl extends AuthService {
  @override
  Uri generateAuthUrl(AuthorizationCodeGrant grant, Uri redirectUrl) {
    return grant.getAuthorizationUrl(redirectUrl);
  }

  @override
  Future<Uri> getRedirectUrl(AuthCallback authCallback, Uri authUrl) async {
    return await authCallback(authUrl);
  }

  @override
  Future<Credentials> handleAuthResponse(
      AuthorizationCodeGrant grant, Map<String, String> redirectUrlQueryParams) async {
    final client = await grant.handleAuthorizationResponse(redirectUrlQueryParams);
    return client.credentials;
  }
}
