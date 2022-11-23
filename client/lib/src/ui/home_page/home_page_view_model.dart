import 'package:client/src/domain/bungie_token.dart';
import 'package:client/src/domain/oauth_config.dart';
import 'package:client/src/services/auth_service.dart';
import 'package:client/src/services/local_cache_service.dart';
import 'package:client/src/services/profile_service.dart';
import 'package:empire/empire.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomePageViewModel extends EmpireViewModel {
  final OAuthConfig oAuthConfig;
  final AuthService _authService;
  final LocalCacheService _localCacheService;
  final ProfileService _profileService;

  final authtoken = EmpireProperty<BungieToken?>(null);

  HomePageViewModel(
    this.oAuthConfig,
    this._authService,
    this._localCacheService,
    this._profileService,
  );

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
    final profile = await _profileService.getProfile();
    if (token != null) {
      _localCacheService.saveMap('token', token.toMap());
      authtoken.set(token);
    }
  }

  Future<void> clearCachedToken() async {
    final token = await _localCacheService.getMap('token');
    print(token!['access_token']);
    final tokenCleared = await _localCacheService.remove('token');

    if (tokenCleared) {
      authtoken.reset();
    }
  }
}
