import 'package:client/src/core/services/http_service.dart';

abstract class ProfileService extends HttpService {
  ProfileService(super.serviceConfig, super.dio);

  Future<String> getProfile();
}
