import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../gen/l10n.dart';
import '../theme/cashfy_text_theme_extension.dart';

extension XContext on BuildContext {
  CashfyTextThemeExtension get xText => Theme.of(this).xText;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  S get s => S.of(this);
}

extension LocalizationExtension on Map<String, String> {
  String get translated {
    String countryCode;
    final locale = Intl.getCurrentLocale();
    if (locale == 'pl') {
      countryCode = 'pl-PL';
    } else {
      countryCode = 'en-US';
    }

    if (containsKey(countryCode)) {
      return this[countryCode] ?? '';
    } else {
      return this['en-US'] ?? (isEmpty ? values.first : '');
    }
  }
}
