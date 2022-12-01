import 'package:auto_route/auto_route.dart';
import 'package:empire/empire.dart';
import 'package:flutter/material.dart';

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
  final _formKey = GlobalKey<FormState>();

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
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: viewModel.validator.validateName,
              decoration: const InputDecoration(
                label: Text('Name'),
              ),
              controller: nameController,
              onChanged: viewModel.name,
            ),

            Text('Last Name is: ${viewModel.name}'),
            AppDatePicker(onDateSelected: viewModel.selectedDate),
            // DropdownButtonFormField(items: items, onChanged: onChanged),
            ElevatedButton(
                onPressed: () {
                  _formKey.currentState?.validate();
                },
                child: Text('Save'))
          ],
        ),
      ),
    );
  }
}
