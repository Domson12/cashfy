import 'package:flutter/material.dart';

class CashfyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CashfyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
