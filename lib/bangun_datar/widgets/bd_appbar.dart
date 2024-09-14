import 'package:flutter/material.dart';

class BDCalAppbar extends StatelessWidget implements PreferredSizeWidget{
  final Color backgroundColor;
  final Widget leading;
  final double toolbarHeight;

  const BDCalAppbar({
    super.key,
    required this.backgroundColor,
    required this.leading,
    required this.toolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leading: leading,
      toolbarHeight: toolbarHeight,
    );
  }
}