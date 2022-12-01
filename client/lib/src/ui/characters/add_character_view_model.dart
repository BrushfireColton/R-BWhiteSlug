import 'package:client/src/domain/character.dart';
import 'package:client/src/domain/validation/character_validator.dart';
import 'package:empire/empire.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddCharacterViewModel extends EmpireViewModel {
  final name = EmpireStringProperty.empty();
  final selectedDate = EmpireNullableDateTimeProperty();
  final CharacterValidator validator;

  AddCharacterViewModel(this.validator);
  @override
  Iterable<EmpireProperty> get empireProps => [name, selectedDate];
}
