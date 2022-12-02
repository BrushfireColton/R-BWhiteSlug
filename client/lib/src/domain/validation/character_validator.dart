import 'package:client/src/core/validation/validator.dart';
import 'package:client/src/domain/class_type.dart';
import 'package:injectable/injectable.dart';

@injectable
class CharacterValidator extends Validator {
  static const String nameKey = 'name';
  static const String classTypeName = 'classType';
  final Map<String, String> errorDefinitions = {
    nameKey: 'Invalid Name',
    classTypeName: 'Invalid Class Type'
  };

  String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return addError(nameKey, errorDefinitions[nameKey]!);
    }
    removeError(nameKey);
    return null;
  }

  String? validateClassType(ClassType? classType) {
    if (classType == null) {
      return addError(classTypeName, errorDefinitions[classTypeName]!);
    }
    removeError(classTypeName);
    return null;
  }
}
