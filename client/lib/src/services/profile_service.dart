import 'package:client/src/core/services/http_service.dart';
import 'package:client/src/domain/profile.dart';

import '../domain/class_type.dart';

abstract class ProfileService extends HttpService {
  ProfileService(super.serviceConfig, super.dio);

  Future<Profile> getProfile();
  Future<Profile> addCharacter(String name, ClassType classType);
}
