import 'package:flutter/material.dart';

import 'cashfy_color_theme.dart';

abstract class CashfyButtonTheme {
  static final _borderRadius = BorderRadius.circular(16);
  static const _padding = EdgeInsets.all(16);

  static ElevatedButtonThemeData get elevatedLight => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: _borderRadius,
          ),
          padding: _padding,
          elevation: 0,
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          backgroundColor: CashfyColorTheme.violet100,
          foregroundColor: CashfyColorTheme.baseLight80,
          disabledBackgroundColor: CashfyColorTheme.violet20,
          disabledForegroundColor: CashfyColorTheme.violet100,
        ),
      );

  static OutlinedButtonThemeData get outlinedLight => OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: _borderRadius,
          ),
          padding: _padding,
          elevation: 0,
          side: BorderSide(
            color: Color(0xff7f3dff),
          ),
          backgroundColor: CashfyColorTheme.violet40,
          foregroundColor: CashfyColorTheme.violet100,
          disabledBackgroundColor: CashfyColorTheme.baseLight20,
          disabledForegroundColor: CashfyColorTheme.violet100,
        ),
      );

  static TextButtonThemeData get textLight => TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: CashfyColorTheme.baseLight20,
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
}
