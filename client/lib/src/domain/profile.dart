import 'package:client/src/domain/character.dart';

class Profile {
  final List<Character> characters;

  Profile(this.characters);

  static Profile fromMap(Map<String, dynamic> jsonData) {
    return Profile(jsonData["characters"]
        .map((e) => Character.fromMap(e))
        .toList() as List<Character>);
  }
}
