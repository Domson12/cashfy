import 'package:flutter/widgets.dart';

import '../../gen/l10n.dart';
import 'extensions.dart';
import 'regex_patterns.dart';

abstract class Validators {
  static const defaultMaxLength = 50;
  static const recordingNameMinLength = 3;
  static const recordingNameMaxLength = 30;
  static const passwordMinLength = 8;

  static String? notEmpty(BuildContext context, String? text) {
    final s = S.of(context);

    if (text == null || text.isEmpty) {
      return s.err_empty_field;
    }

    return null;
  }

  static String? minLength(
    BuildContext context,
    String text,
    int minLength,
  ) {
    final s = S.of(context);

    if (text.length < minLength) {
      return s.err_too_short(minLength);
    }

    return null;
  }

  static String? charsAndDigits(BuildContext context, String? text) {
    final s = S.of(context);

    var err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    err = minLength(context, text!, 3);
    if (err != null) {
      return err;
    }

    if (!RegExp(RegexPatterns.charsAndDigits).hasMatch(text)) {
      return s.err_char_and_digits;
    }

    return null;
  }

  static String? phoneNumber(BuildContext context, String? text) {
    final err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    if (!RegExp(RegexPatterns.phoneNumber).hasMatch(text!)) {
      return context.s.err_phone_number;
    }

    return null;
  }

  static String? onlyDigitsNotNull(BuildContext context, String? text) {
    final s = S.of(context);

    var err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    err = minLength(context, text!, 1);
    if (err != null) {
      return err;
    }

    if (!RegExp(RegexPatterns.digitsOnly).hasMatch(text)) {
      return s.err_char_and_digits;
    }

    return null;
  }

  static String? zipCodeLength(BuildContext context, String? text) {
    var err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    err = minLength(context, text!, 6);
    if (err != null) {
      return err;
    }

    return null;
  }

  static String? email(BuildContext context, String? text) {
    final s = S.of(context);

    final trimmedText = text?.trim();

    final err = notEmpty(context, trimmedText);
    if (err != null) {
      return err;
    }

    if (!RegExp(RegexPatterns.email).hasMatch(trimmedText!)) {
      return s.err_email;
    }

    return null;
  }

  static String? password(BuildContext context, String? text) {
    var err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    err = minLength(context, text!, passwordMinLength);
    if (err != null) {
      return err;
    }

    // TODO: add password requirements

    return null;
  }

  static String? repeatPassword(
    BuildContext context,
    String? text,
    String password,
  ) {
    final s = S.of(context);

    final err = notEmpty(context, text);
    if (err != null) {
      return err;
    }

    if (text != password) {
      return s.err_pass_match;
    }

    return null;
  }
}
