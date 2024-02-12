import 'package:flutter/material.dart';

import 'cashfy_color_theme.dart';

enum BorderType { disabled, enabled, focused, error, focusedError }

abstract class CashfyInputDecorationTheme {
  static const _padding = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 13,
  );

  static final InputDecorationTheme themeLight = InputDecorationTheme(
    errorBorder: borderLight(BorderType.error),
    focusedBorder: borderLight(BorderType.focused),
    focusedErrorBorder: borderLight(BorderType.focusedError),
    enabledBorder: borderLight(BorderType.enabled),
    disabledBorder: borderLight(BorderType.disabled),
    fillColor: CashfyColorTheme.baseLight40,
    filled: true,
    contentPadding: _padding,
    hintStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: CashfyColorTheme.baseLight80,
      height: 1,
    ),
  );

  static InputBorder borderLight(BorderType type) {
    final radius = BorderRadius.circular(8);

    final borderColor = switch (type) {
      BorderType.enabled => CashfyColorTheme.violet40,
      BorderType.disabled => CashfyColorTheme.violet20,
      BorderType.focused => CashfyColorTheme.violet100,
      BorderType.error => CashfyColorTheme.violet100,
      BorderType.focusedError => CashfyColorTheme.violet100,
    };
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
      ),
      borderRadius: radius,
    );
  }
}
