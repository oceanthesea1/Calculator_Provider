import 'package:flutter/material.dart';

class BDCalTextField extends StatelessWidget {
  final String labelText;
  final bool isObsecure;
  final TextStyle textStyle;
  final TextEditingController controller;

  final Color fillColor;
  final bool filled;

  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final double borderRadius;

  final TextInputType keyboardType;
  final Function(String)? onChanged;

  const BDCalTextField({
    super.key,
    required this.labelText,
    required this.isObsecure,
    required this.textStyle,
    required this.controller,
    required this.fillColor,
    required this.filled,
    required this.enabledBorderColor,
    required this.focusedBorderColor,
    required this.borderRadius,
    required this.keyboardType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: controller,
        obscureText: isObsecure,
        style: textStyle,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          filled: filled,
          fillColor: fillColor,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: enabledBorderColor),
              borderRadius: BorderRadius.circular(borderRadius)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: focusedBorderColor),
              borderRadius: BorderRadius.circular(borderRadius)),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
