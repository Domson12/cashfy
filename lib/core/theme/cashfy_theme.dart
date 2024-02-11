import 'package:flutter/material.dart';

import 'cashfy_button_theme.dart';
import 'cashfy_color_theme.dart';
import 'cashfy_input_decoration_theme.dart';
import 'cashfy_text_theme_extension.dart';

abstract class CashfyTheme {
  static final textStyleExtension = CashfyTextThemeExtension.initialize();
  static final ThemeData light = ThemeData(
    colorScheme: CashfyColorTheme.schemeLight,
    dialogTheme: DialogTheme(
      backgroundColor: CashfyColorTheme.schemeLight.onBackground,
      titleTextStyle: CashfyTheme.textStyleExtension.title1,
      contentTextStyle: CashfyTheme.textStyleExtension.body1,
    ),
    scaffoldBackgroundColor: CashfyColorTheme.schemeLight.background,
    textTheme: const TextTheme().apply(
      bodyColor: CashfyColorTheme.baseDark50,
      displayColor: CashfyColorTheme.baseDark75,
    ),
    elevatedButtonTheme: CashfyButtonTheme.elevatedLight,
    outlinedButtonTheme: CashfyButtonTheme.outlinedLight,
    textButtonTheme: CashfyButtonTheme.textLight,
    inputDecorationTheme: CashfyInputDecorationTheme.themeLight,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: CashfyColorTheme.schemeLight.primary,
      selectionHandleColor: CashfyColorTheme.schemeLight.primary,
    ),
    unselectedWidgetColor: CashfyColorTheme.schemeLight.outline,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: CashfyColorTheme.schemeLight.primary,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: CashfyColorTheme.schemeLight.primary,
      unselectedLabelColor: CashfyColorTheme.baseDark75,
      indicatorColor: CashfyColorTheme.schemeLight.primary,
      dividerColor: CashfyColorTheme.schemeLight.primary,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: CashfyTheme.textStyleExtension.title3,
    ),
    radioTheme: RadioThemeData(
      overlayColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return CashfyColorTheme.schemeLight.onPrimary;
        }
        return null;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return CashfyColorTheme.schemeLight.primary;
        }
        return CashfyColorTheme.schemeLight.outline;
      }),
      trackColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return CashfyColorTheme.schemeLight.primary.withOpacity(0.5);
        }
        return CashfyColorTheme.schemeLight.outline;
      }),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: CashfyColorTheme.schemeLight.background,
      elevation: 0,
      iconTheme: IconThemeData(
        color: CashfyColorTheme.schemeLight.primary,
      ),
      titleTextStyle: textStyleExtension.title1,
    ),
    extensions: [textStyleExtension],
  );
}
