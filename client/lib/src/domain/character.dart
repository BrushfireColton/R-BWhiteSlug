import 'dart:convert';

import 'package:client/src/domain/class_type.dart';
import 'package:client/src/domain/core/serializable.dart';

class Character extends Serializable {
  final String characterId;
  final String name;
  final ClassType classType;

  Character(this.characterId, this.name, this.classType);

  static Character fromMap(Map<String, dynamic> jsonData) {
    return Character(jsonData["characterId"], jsonData['name'],
        ClassType.fromInt(jsonData["classType"]));
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "characterId": characterId,
      "name": name,
      "classType": classType.value
    };
  }

  @override
  String toJson() {
    return json.encode(toMap());
  }
}
