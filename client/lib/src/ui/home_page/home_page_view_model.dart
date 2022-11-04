import 'package:client/src/domain/oauth_config.dart';
import 'package:client/src/services/auth_service.dart';
import 'package:empire/empire.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomePageViewModel extends EmpireViewModel {
  final OAuthConfig oAuthConfig;
  final AuthService _authService;

  HomePageViewModel(this.oAuthConfig, this._authService);

  @override
  Iterable<EmpireProperty> get empireProps => [];

  Future<void> authorize() async {
    final test = await _authService.authorize(oAuthConfig);
    if (test != null) {}
  }
}
