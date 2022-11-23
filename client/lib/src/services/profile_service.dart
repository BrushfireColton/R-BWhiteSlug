import 'package:client/src/core/services/http_service.dart';
import 'package:client/src/domain/profile.dart';

abstract class ProfileService extends HttpService {
  ProfileService(super.serviceConfig, super.dio);

  Future<Profile> getProfile();
}
