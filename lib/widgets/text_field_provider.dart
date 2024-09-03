import 'package:flutter/material.dart';

class TextFieldProvider extends StatelessWidget {
  final String labelText;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;

  const TextFieldProvider(
      {super.key,
      required this.labelText,
      required this.onChanged,
      required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
      ),
      keyboardType: keyboardType,
      onChanged: onChanged,
    );
  }
}
