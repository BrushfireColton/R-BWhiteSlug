import 'package:client/src/domain/class_type.dart';

class Character {
  final String characterId;

  final ClassType classType;

  Character(this.characterId, this.classType);

  static Character fromMap(Map<String, dynamic> jsonData) {
    return Character(
        jsonData["characterId"], ClassType.fromInt(jsonData["classType"]));
  }
}
