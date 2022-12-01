import 'package:client/src/domain/class_type.dart';

class Character {
  final String characterId;
  final String name;
  final ClassType classType;

  Character(this.characterId, this.name, this.classType);

  static Character fromMap(Map<String, dynamic> jsonData) {
    return Character(jsonData["characterId"], jsonData['name'],
        ClassType.fromInt(jsonData["classType"]));
  }
}
