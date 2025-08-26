import 'package:flutter/material.dart';
import 'package:polka_test_task/models/master.dart';

class DropdownMasterPicker extends StatefulWidget {
  const DropdownMasterPicker({super.key, this.onValuePicked});

  final void Function(MasterType? type)? onValuePicked;

  @override
  State<DropdownMasterPicker> createState() => _DropdownMasterPickerState();
}

class _DropdownMasterPickerState extends State<DropdownMasterPicker> {
  MasterType? _selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(6)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<MasterType>(
          hint: const Text("Выберите"),
          value: _selected,
          items: MasterType.values.map((v) {
            return DropdownMenuItem(value: v, child: Text(v.name));
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selected = value;
              widget.onValuePicked?.call(value);
            });
          },
        ),
      ),
    );
  }
}
