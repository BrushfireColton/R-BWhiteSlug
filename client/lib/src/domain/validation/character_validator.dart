import 'package:client/src/core/validation/validator.dart';
import 'package:injectable/injectable.dart';

@injectable
class CharacterValidator extends Validator {
  static const String nameKey = 'name';
  final Map<String, String> errorDefinitions = {nameKey: 'Invalid Name'};

  String? validateName(String? name) {
    if (name == null || name.isEmpty) {
      return addError(nameKey, errorDefinitions[nameKey]!);
    }
    removeError(nameKey);
    return null;
  }
}
