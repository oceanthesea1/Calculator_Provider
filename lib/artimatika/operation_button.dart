import 'package:flutter/material.dart';

class OperationButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isClear;

  const OperationButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isClear = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: isClear ? Colors.red : Colors.white,
        minimumSize: const Size(60, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        backgroundColor: isClear ? Colors.white : Colors.black,
      ),
      child: Text(text),
    );
  }
}
