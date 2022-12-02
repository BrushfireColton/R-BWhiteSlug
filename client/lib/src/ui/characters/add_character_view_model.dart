import 'package:client/src/domain/character.dart';
import 'package:client/src/domain/validation/character_validator.dart';
import 'package:empire/empire.dart';
import 'package:injectable/injectable.dart';

import '../../domain/class_type.dart';

@injectable
class AddCharacterViewModel extends EmpireViewModel {
  final name = EmpireStringProperty.empty();
  final selectedDate = EmpireNullableDateTimeProperty();
  final CharacterValidator validator;
  final classType = EmpireProperty<ClassType?>(null);

  AddCharacterViewModel(this.validator);

  @override
  Iterable<EmpireProperty> get empireProps => [name, selectedDate, classType];

  void saveCharacter(void Function(Character) postSaveCallback) {
    final newCharacter = Character('asfdasdf', name.value, classType.value!);
    postSaveCallback(newCharacter);
  }
}
