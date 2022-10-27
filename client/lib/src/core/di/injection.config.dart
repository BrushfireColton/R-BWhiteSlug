// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/oauth_config.dart' as _i5;
import '../../services/auth_service.dart' as _i3;
import '../../services/auth_service_impl.dart' as _i4;
import '../../ui/auth/core/auth_view_model.dart' as _i7;
import '../../ui/home_page/home_page_view_model.dart' as _i8;
import '../../ui/vendor_screen/vendor_screen_view_model.dart' as _i6;
import 'custom_injections_module.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

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
  final customInjectionsModule = _$CustomInjectionsModule();
  gh.factory<_i3.AuthService>(() => _i4.AuthServiceImpl());
  gh.lazySingleton<_i5.OAuthConfig>(
      () => customInjectionsModule.getOAuthConfig());
  gh.factory<_i6.VendorScreenViewModel>(() => _i6.VendorScreenViewModel());
  gh.factory<_i7.AuthViewModel>(
      () => _i7.AuthViewModel(get<_i5.OAuthConfig>()));
  gh.factory<_i8.HomePageViewModel>(() => _i8.HomePageViewModel(
        get<_i5.OAuthConfig>(),
        get<_i3.AuthService>(),
      ));
  return get;
}

class _$CustomInjectionsModule extends _i9.CustomInjectionsModule {}
