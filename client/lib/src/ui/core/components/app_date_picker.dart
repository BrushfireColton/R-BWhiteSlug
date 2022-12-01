import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppDatePicker extends StatefulWidget {
  final void Function(DateTime?) onDateSelected;
  const AppDatePicker({
    super.key,
    required this.onDateSelected,
  });

  @override
  State<AppDatePicker> createState() => _AppDatePickerState();
}

class _AppDatePickerState extends State<AppDatePicker> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final selectedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2022, 1, 1),
          lastDate: DateTime(2022, 12, 31),
        );

        widget.onDateSelected(selectedDate);
        this.selectedDate = selectedDate;
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(selectedDate?.toIso8601String() ?? 'No Date'),
      ),
    );
  }
}
