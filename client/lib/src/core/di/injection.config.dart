// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_appauth/flutter_appauth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/bungie_token.dart' as _i12;
import '../../domain/oauth_config.dart' as _i8;
import '../../domain/validation/character_validator.dart' as _i3;
import '../../services/auth_service.dart' as _i10;
import '../../services/auth_service_impl.dart' as _i11;
import '../../services/local_cache_service.dart' as _i6;
import '../../services/local_cache_service_impl.dart' as _i7;
import '../../services/profile_service.dart' as _i15;
import '../../services/profile_service_impl.dart' as _i16;
import '../../services/vendor_service.dart' as _i17;
import '../../services/vendor_service_impl.dart' as _i18;
import '../../ui/characters/add_character_view_model.dart' as _i9;
import '../../ui/characters/character_selector_view_model.dart' as _i19;
import '../../ui/home_page/home_page_view_model.dart' as _i13;
import '../services/http_service_config.dart' as _i14;
import 'custom_injections_module.dart' as _i21;
import 'third_party_module.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final thirdPartyModule = _$ThirdPartyModule();
  final customInjectionsModule = _$CustomInjectionsModule();
  gh.factory<_i3.CharacterValidator>(() => _i3.CharacterValidator());
  gh.factory<_i4.Dio>(() => thirdPartyModule.getDioInstance());
  gh.factory<_i5.FlutterAppAuth>(() => thirdPartyModule.getAppAuth());
  gh.factory<_i6.LocalCacheService>(() => _i7.LocalCacheServiceImpl());
  gh.lazySingleton<_i8.OAuthConfig>(
      () => customInjectionsModule.getOAuthConfig());
  gh.factory<_i9.AddCharacterViewModel>(
      () => _i9.AddCharacterViewModel(get<_i3.CharacterValidator>()));
  gh.factory<_i10.AuthService>(
      () => _i11.AuthServiceImpl(get<_i5.FlutterAppAuth>()));
  gh.factoryAsync<_i12.BungieToken>(
      () => customInjectionsModule.getAuthToken(get<_i6.LocalCacheService>()));
  gh.factory<_i13.HomePageViewModel>(() => _i13.HomePageViewModel(
        get<_i8.OAuthConfig>(),
        get<_i10.AuthService>(),
        get<_i6.LocalCacheService>(),
      ));
  gh.factoryAsync<_i14.HttpServiceConfig>(() async => customInjectionsModule
      .getHttpServiceConfig(await get.getAsync<_i12.BungieToken>()));
  gh.factoryAsync<_i15.ProfileService>(() async => _i16.ProfileServiceImpl(
        await get.getAsync<_i14.HttpServiceConfig>(),
        get<_i4.Dio>(),
      ));
  gh.factoryAsync<_i17.VendorService>(() async => _i18.VendorServiceImpl(
        await get.getAsync<_i14.HttpServiceConfig>(),
        get<_i4.Dio>(),
      ));
  gh.factoryAsync<_i19.CharacterSelectorViewModel>(() async =>
      _i19.CharacterSelectorViewModel(
          await get.getAsync<_i15.ProfileService>()));
  return get;
}

class _$ThirdPartyModule extends _i20.ThirdPartyModule {}

class _$CustomInjectionsModule extends _i21.CustomInjectionsModule {}
