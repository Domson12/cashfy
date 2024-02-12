import 'package:flutter/material.dart';

extension XTheme on ThemeData {
  CashfyTextThemeExtension get xText => extension<CashfyTextThemeExtension>()!;
}

class CashfyTextThemeExtension
    extends ThemeExtension<CashfyTextThemeExtension> {

  const CashfyTextThemeExtension({
    required this.tiny,
    required this.small,
    required this.body3,
    required this.body2,
    required this.body1,
    required this.title3,
    required this.title2,
    required this.title1,
    required this.titleX,
  });

  factory CashfyTextThemeExtension.initialize() =>
      const CashfyTextThemeExtension(
        tiny: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.none,
          fontFamily: 'Inter-Medium',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          height: 12 / 12,
          letterSpacing: 0,
        ),
        small: TextStyle(
          fontSize: 13,
          decoration: TextDecoration.none,
          fontFamily: 'Inter-Medium',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          height: 16 / 13,
          letterSpacing: 0,
        ),
        body3: TextStyle(
          fontSize: 14,
          decoration: TextDecoration.none,
          fontFamily: 'Inter-Medium',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          height: 18 / 14,
          letterSpacing: 0,
        ),
        body2: TextStyle(
          fontSize: 16,
          decoration: TextDecoration.none,
          fontFamily: 'Inter-Semi Bold',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          height: 16 / 16,
          letterSpacing: 0,
        ),
        body1: TextStyle(
          fontSize: 16,
          decoration: TextDecoration.none,
          fontFamily: 'Inter-Medium',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          height: 16 / 16,
          letterSpacing: 0,
        ),
        title3: TextStyle(
          fontSize: 18,
          decoration: TextDecoration.none,
          fontFamily: 'Inter-Semi Bold',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          height: 18 / 18,
          letterSpacing: 0,
        ),
        title2: TextStyle(
          fontSize: 24,
          decoration: TextDecoration.none,
          fontFamily: 'Inter-Semi Bold',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          height: 24 / 24,
          letterSpacing: 0,
        ),
        title1: TextStyle(
          fontSize: 32,
          decoration: TextDecoration.none,
          fontFamily: 'Inter-Bold',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          height: 39 / 32,
          letterSpacing: 0,
        ),
        titleX: TextStyle(
          fontSize: 64,
          decoration: TextDecoration.none,
          fontFamily: 'Inter-Bold',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          height: 80 / 64,
          letterSpacing: 0,
        ),
      );
  final TextStyle tiny;
  final TextStyle small;
  final TextStyle body3;
  final TextStyle body2;
  final TextStyle body1;
  final TextStyle title3;
  final TextStyle title2;
  final TextStyle title1;
  final TextStyle titleX;

  @override
  ThemeExtension<CashfyTextThemeExtension> copyWith({
    TextStyle? tiny,
    TextStyle? small,
    TextStyle? body3,
    TextStyle? body2,
    TextStyle? body1,
    TextStyle? title3,
    TextStyle? title2,
    TextStyle? title1,
    TextStyle? titleX,
  }) {
    return CashfyTextThemeExtension(
      tiny: tiny ?? this.tiny,
      small: small ?? this.small,
      body3: body3 ?? this.body3,
      body2: body2 ?? this.body2,
      body1: body1 ?? this.body1,
      title3: title3 ?? this.title3,
      title2: title2 ?? this.title2,
      title1: title1 ?? this.title1,
      titleX: titleX ?? this.titleX,
    );
  }

  @override
  ThemeExtension<CashfyTextThemeExtension> lerp(
    covariant ThemeExtension<CashfyTextThemeExtension>? other,
    double t,
  ) {
    if (other == null || t == 0.0) return this;

    return other;
  }
}
