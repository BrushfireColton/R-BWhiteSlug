import 'package:client/src/services/profile_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileService)
class ProfileServiceImpl extends ProfileService {
  ProfileServiceImpl(super.serviceConfig, super.dio);

  @override
  Future<String> getProfile() async {
    final response = await get<String>('/profile/all');
    return response.data ?? 'no data';
  }
}
