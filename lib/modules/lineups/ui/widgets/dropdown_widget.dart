import 'package:flutter/material.dart';
import 'package:valorant_app/utils/extensions/string.dart';

class DropdownWidget extends StatelessWidget {
  final String label;
  final String value;
  final List<String> items;
  final Function(String) onChanged;

  const DropdownWidget({
    Key? key,
    required this.value,
    required this.label,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey,
        labelText: label,
      ),
      items: items.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item.capitalize()),
        );
      }).toList(),
      onChanged: (v) => onChanged(v!),
    );
  }
}
