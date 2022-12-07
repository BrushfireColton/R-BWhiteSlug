import 'package:client/src/domain/character.dart';
import 'package:client/src/services/profile_service.dart';
import 'package:injectable/injectable.dart';

import '../domain/class_type.dart';
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
  Future<Profile> addCharacter(String name, ClassType classType) async {
    final newCharacter = Character('test', name, classType);
    final response = await post(newCharacter, '/profile/all');
    return Profile.fromMap(response.data!);
  }
}
