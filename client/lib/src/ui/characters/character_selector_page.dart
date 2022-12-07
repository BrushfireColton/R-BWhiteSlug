import 'package:auto_route/auto_route.dart';
import 'package:client/src/ui/characters/character_selector_view_model.dart';
import 'package:empire/empire.dart';
import 'package:flutter/material.dart';

import '../../core/di/injection.dart';
import '../../domain/character.dart';
import '../core/routes.gr.dart';

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
      appBar: AppBar(
        title: const Text('Characters'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.characters.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(viewModel.characters[index].name),
                  textColor: Colors.orange,
                  onTap: () {
                    characterPopUp(context, index);
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
                onPressed: () async {
                  final newCharacter = await AutoRouter.of(context).push(
                    AddCharacterRoute(
                      viewModel: resolveInstanceOf(),
                    ),
                  );

                  if (newCharacter != null) {
                    viewModel.characters.add(newCharacter as Character);
                  }
                },
                child: const Text("Add Character")),
          )
        ],
      ),
    );
  }

  void characterPopUp(BuildContext context, index) {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: Text(viewModel.characters[index].classType.description),
            content: Stack(
              children: [
                Image.network(
                  'https://images.contentstack.io/v3/assets/blte410e3b15535c144/blt815895fef5087a37/61fc75572f5ed026e153ca95/pose-titan-mobile-r.png?format=webp',
                ),
                const Text("Hello Guardian")
              ],
            ),
            actions: [
              ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK')),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('CANCEL'))
            ],
          );
        }));
  }
}
