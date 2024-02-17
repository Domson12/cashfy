import 'package:flutter/material.dart';

import '../utils/extensions.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
    this.transparent = false,
  });

  final bool transparent;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      child: ColoredBox(
        color: transparent
            ? Colors.transparent
            : context.colorScheme.surface.withOpacity(0.3),
        child: const Center(
          child: SizedBox(
            width: 64,
            height: 64,
            child: CircularProgressIndicator(
              strokeWidth: 5,
            ),
          ),
        ),
      ),
    );
  }
}
