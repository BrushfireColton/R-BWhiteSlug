import 'package:client/src/domain/bungie_token.dart';
import 'package:client/src/domain/oauth_config.dart';
import 'package:client/src/services/auth_service.dart';
import 'package:client/src/services/local_cache_service.dart';
import 'package:empire/empire.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomePageViewModel extends EmpireViewModel {
  final OAuthConfig oAuthConfig;
  final AuthService _authService;
  final LocalCacheService _localCacheService;
  final authtoken = EmpireProperty<BungieToken?>(null);

  HomePageViewModel(
      this.oAuthConfig, this._authService, this._localCacheService);

  @override
  Iterable<EmpireProperty> get empireProps => [authtoken];

  Future<void> checkCachedToken() async {
    final cacheToken = await _localCacheService.getMap('token');
    if (cacheToken != null) {
      authtoken.set(BungieToken.fromMap(cacheToken));
    }
  }

  Future<void> authorize() async {
    final token = await _authService.authorize(oAuthConfig);
    if (token != null) {
      _localCacheService.saveMap('token', token.toMap());
    }
  }
}
