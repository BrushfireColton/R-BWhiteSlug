import 'package:client/src/services/profile_service.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

import '../domain/profile.dart';

@Injectable(as: ProfileService)
class ProfileServiceImpl extends ProfileService {
  ProfileServiceImpl(super.serviceConfig, super.dio);

  @override
  Future<Profile> getProfile() async {
    final response = await get<Map<String, dynamic>>('/profile/all');
    return Profile.fromMap(response.data!);
  }

  @override
  Future<Profile> addCharacter(String name, String classType) async {
    final response = await post(data, '/profile/all');
    return 
  }
}
