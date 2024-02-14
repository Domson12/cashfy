import 'package:flutter/material.dart';

import '../utils/extensions.dart';

class CashfyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CashfyAppBar({this.title, super.key});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? '',
        style: context.xText.title3.copyWith(
          color: context.colorScheme.onBackground,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
