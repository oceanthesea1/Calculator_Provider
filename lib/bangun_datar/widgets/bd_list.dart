import 'package:flutter/material.dart';

class BDCalList extends StatelessWidget {
  final Color color;
  final IconData icon;
  final double iconSize;
  final double fontSize;
  final FontWeight fontWeight;
  final String text;
  final VoidCallback? onTap;
  final double borderRadius;
  final double height;

  const BDCalList(
      {super.key,
      required this.color,
      required this.icon,
      required this.text,
      this.onTap,
      required this.iconSize,
      required this.fontSize,
      required this.fontWeight,
      required this.borderRadius,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, size: iconSize),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
