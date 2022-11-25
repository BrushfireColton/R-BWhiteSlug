import 'package:client/src/ui/characters/character_selector_view_model.dart';
import 'package:empire/empire.dart';
import 'package:flutter/material.dart';

class CharacterSelectorPage extends EmpireWidget<CharacterSelectorViewModel> {
  const CharacterSelectorPage({super.key, required super.viewModel});

  @override
  EmpireState<EmpireWidget<EmpireViewModel>, CharacterSelectorViewModel>
      createEmpire() => _CharacterSelectorPageState(viewModel);
}

class _CharacterSelectorPageState
    extends EmpireState<CharacterSelectorPage, CharacterSelectorViewModel> {
  _CharacterSelectorPageState(super.viewModel);

  @override
  void didChangeDependencies() {
    viewModel.loadCharacters();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            viewModel.busy ? CircularProgressIndicator() : Text('hello world'),
      ),
    );
  }
}
