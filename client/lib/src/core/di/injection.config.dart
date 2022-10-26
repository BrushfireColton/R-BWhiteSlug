// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/oauth_config.dart' as _i3;
import '../../ui/auth/auth_view_model.dart' as _i4;
import '../../ui/auth/login_view_model.dart' as _i5;
import 'custom_injections_module.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.OAuthConfig>(
      () => customInjectionsModule.getOAuthConfig());
  gh.factory<_i4.AuthViewModel>(
      () => _i4.AuthViewModel(get<_i3.OAuthConfig>()));
  gh.factory<_i5.LoginViewModel>(
      () => _i5.LoginViewModel(get<_i3.OAuthConfig>()));
  return get;
}

class _$CustomInjectionsModule extends _i6.CustomInjectionsModule {}
