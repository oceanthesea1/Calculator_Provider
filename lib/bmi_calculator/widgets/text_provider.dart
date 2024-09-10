import 'package:flutter/material.dart';

class TextProvider extends StatelessWidget {
  final String text;
  final double fontSize;

  const TextProvider({
    super.key,
    required this.text,
    this.fontSize = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize),
    );
  }
}
