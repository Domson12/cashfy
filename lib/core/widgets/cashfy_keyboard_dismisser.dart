import 'package:flutter/material.dart';

class CashfyKeyboardDismisser extends StatelessWidget {
  const CashfyKeyboardDismisser({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: child,
    );
  }
}
