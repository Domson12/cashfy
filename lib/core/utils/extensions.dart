import 'package:flutter/material.dart';

import '../../gen/l10n.dart';
import '../theme/cashfy_text_theme_extension.dart';

extension XContext on BuildContext {
  CashfyTextThemeExtension get xText => Theme.of(this).xText;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  S get s => S.of(this);
}
