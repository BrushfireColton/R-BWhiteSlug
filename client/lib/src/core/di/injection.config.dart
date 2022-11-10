// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_appauth/flutter_appauth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/bungie_token.dart' as _i12;
import '../../domain/oauth_config.dart' as _i7;
import '../../services/auth_service.dart' as _i10;
import '../../services/auth_service_impl.dart' as _i11;
import '../../services/local_cache_service.dart' as _i5;
import '../../services/local_cache_service_impl.dart' as _i6;
import '../../services/vendor_service.dart' as _i8;
import '../../services/vendor_service_impl.dart' as _i9;
import '../../ui/home_page/home_page_view_model.dart' as _i13;
import 'custom_injections_module.dart' as _i15;
import 'third_party_module.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i3.Dio>(() => thirdPartyModule.getDioInstance());
  gh.factory<_i4.FlutterAppAuth>(() => thirdPartyModule.getAppAuth());
  gh.factory<_i5.LocalCacheService>(() => _i6.LocalCacheServiceImpl());
  gh.lazySingleton<_i7.OAuthConfig>(
      () => customInjectionsModule.getOAuthConfig());
  gh.factory<_i8.VendorService>(() => _i9.VendorServiceImpl(get<_i3.Dio>()));
  gh.factory<_i10.AuthService>(
      () => _i11.AuthServiceImpl(get<_i4.FlutterAppAuth>()));
  gh.factoryAsync<_i12.BungieToken>(
      () => customInjectionsModule.getAuthToken(get<_i5.LocalCacheService>()));
  gh.factory<_i13.HomePageViewModel>(() => _i13.HomePageViewModel(
        get<_i7.OAuthConfig>(),
        get<_i10.AuthService>(),
        get<_i5.LocalCacheService>(),
      ));
  return get;
}

class _$ThirdPartyModule extends _i14.ThirdPartyModule {}

class _$CustomInjectionsModule extends _i15.CustomInjectionsModule {}
