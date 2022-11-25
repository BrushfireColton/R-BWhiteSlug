import 'package:client/src/services/profile_service.dart';
import 'package:empire/empire.dart';
import 'package:injectable/injectable.dart';

import '../../domain/character.dart';
import '../../domain/profile.dart';

@injectable
class CharacterSelectorViewModel extends EmpireViewModel {
  final ProfileService profileService;
  final characters = EmpireProperty<List<Character>>([]);

  CharacterSelectorViewModel(this.profileService);

  @override
  Iterable<EmpireProperty> get empireProps => [characters];

  Future<void> loadCharacters() async {
    final profile =
        await doAsync<Profile>(() async => await profileService.getProfile());
    characters.set(profile.characters);
  }
}
