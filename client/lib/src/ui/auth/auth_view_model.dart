import 'package:client/src/domain/oauth_config.dart';
import 'package:empire/empire.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthViewModel extends EmpireViewModel {
  final OAuthConfig oAuthConfig;

  AuthViewModel(this.oAuthConfig);

  @override
  Iterable<EmpireProperty> get empireProps => [];
}
