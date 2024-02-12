import 'package:flutter/material.dart';

abstract class CashfyColorTheme {
  //Light
  static const Color baseLight20 = Color(0xff91919f);
  static const Color baseLight40 = Color(0xffe3e5e5);
  static const Color baseLight60 = Color(0xfff1f1fa);
  static const Color baseLight80 = Color(0xfffcfcfc);
  static const Color baseLight100 = Color(0xffffffff);
  //Dark
  static const Color baseDark100 = Color(0xff0d0e0f);
  static const Color baseDark75 = Color(0xff161719);
  static const Color baseDark50 = Color(0xff212325);
  static const Color baseDark25 = Color(0xff292b2d);
  //violets
  static const Color violet100 = Color(0xff7f3dff);
  static const Color violet80 = Color(0xff8f57ff);
  static const Color violet60 = Color(0xffb18aff);
  static const Color violet40 = Color(0xffd3bdff);
  static const Color violet20 = Color(0xffeee5ff);
  //blues
  static const Color blue100 = Color(0xff0077ff);
  static const Color blue80 = Color(0xff248aff);
  static const Color blue60 = Color(0xff57a5ff);
  static const Color blue40 = Color(0xff8ac0ff);
  static const Color blue20 = Color(0xffbddcff);
  //reds
  static const Color red100 = Color(0xfffd3c4a);
  static const Color red80 = Color(0xfffd5662);
  static const Color red60 = Color(0xfffd6f7a);
  static const Color red40 = Color(0xfffda2a9);
  static const Color red20 = Color(0xfffdd5d7);
  //greens
  static const Color green100 = Color(0xff00a86b);
  static const Color green80 = Color(0xff2ab784);
  static const Color green60 = Color(0xff65d1aa);
  static const Color green40 = Color(0xff93eaca);
  static const Color green20 = Color(0xffcffaea);
  //yellows
  static const Color yellow100 = Color(0xfffcac12);
  static const Color yellow80 = Color(0xfffcbb3c);
  static const Color yellow60 = Color(0xfffccc6f);
  static const Color yellow40 = Color(0xfffcdda1);
  static const Color yellow20 = Color(0xfffceed4);

//Light
  static const ColorScheme schemeLight = ColorScheme.light(
    primary: violet100,
    secondary: blue100,
    error: red100,
    onSecondary: baseLight100,
    onSurface: baseDark100,
    onBackground: baseDark100,
    primaryContainer: baseLight80,
    onPrimaryContainer: baseDark100,
    outline: baseLight40,
    outlineVariant: baseLight20,
    onTertiary: baseDark100,
    scrim: baseLight60,
    inversePrimary: violet20,
  );
}
