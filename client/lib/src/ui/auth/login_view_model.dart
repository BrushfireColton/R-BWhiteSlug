import 'package:client/src/domain/oauth_config.dart';
import 'package:empire/empire.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginViewModel extends EmpireViewModel {
  final OAuthConfig oAuthConfig;

  LoginViewModel(this.oAuthConfig);

  @override
  Iterable<EmpireProperty> get empireProps => [];

  Future<void> login() async {}
}
