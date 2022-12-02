import 'package:auto_route/auto_route.dart';
import 'package:empire/empire.dart';
import 'package:flutter/material.dart';

import '../../domain/class_type.dart';
import '../core/components/app_date_picker.dart';
import 'add_character_view_model.dart';

class AddCharacterPage extends EmpireWidget<AddCharacterViewModel> {
  const AddCharacterPage({super.key, required super.viewModel});

  @override
  EmpireState<EmpireWidget<EmpireViewModel>, AddCharacterViewModel>
      createEmpire() => _AddCharacterPageState(viewModel);
}

class _AddCharacterPageState
    extends EmpireState<AddCharacterPage, AddCharacterViewModel> {
  late final TextEditingController nameController;

  _AddCharacterPageState(super.viewModel);

  @override
  void initState() {
    nameController = TextEditingController(text: '');
    super.initState();
  }
  //dropdown
  //submit and the new character added to list
  //send new character to backend

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: AutoRouter.of(context).navigateBack,
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text('Name'),
                errorText: viewModel.validator.errors['name']),
            controller: nameController,
            onChanged: (name) {
              viewModel.validator.validateName(name);
              viewModel.name.set(name);
            },
          ),
          Text('Last Name is: ${viewModel.name}'),
          AppDatePicker(onDateSelected: viewModel.selectedDate),
          Row(
            children: [
              Expanded(
                child: InputDecorator(
                  decoration: InputDecoration(
                    errorText: viewModel.validator.errors['classType'],
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<ClassType>(
                        items: ClassType.values
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e.description),
                                ))
                            .toList(),
                        value: viewModel.classType.value,
                        onChanged: (value) {
                          viewModel.validator.validateClassType(value);
                          viewModel.classType.set(value);
                        }),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    viewModel.validator.validateClassType(null);
                    viewModel.classType.reset();
                  },
                  child: const Text('Clear')),
            ],
          ),
          ElevatedButton(
              onPressed: viewModel.validator.isValid
                  ? () => viewModel.saveCharacter(AutoRouter.of(context).pop)
                  : null,
              child: Text('Save'))
        ],
      ),
    );
  }
}
