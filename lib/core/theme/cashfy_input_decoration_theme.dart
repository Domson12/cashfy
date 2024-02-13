import 'package:flutter/material.dart';

import 'cashfy_color_theme.dart';
import 'cashfy_theme.dart';

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
    fillColor: Colors.transparent,
    filled: true,
    contentPadding: _padding,
    hintStyle: CashfyTheme.textStyleExtension.body1.copyWith(
      color: CashfyColorTheme.baseLight20,
      height: 1,
    ),
  );

  static InputBorder borderLight(BorderType type) {
    final radius = BorderRadius.circular(8);

    final borderColor = switch (type) {
      BorderType.enabled => CashfyColorTheme.baseLight20,
      BorderType.disabled => CashfyColorTheme.baseLight20,
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
