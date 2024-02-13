// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Gain total control of your money`
  String get auth_title1 {
    return Intl.message(
      'Gain total control of your money',
      name: 'auth_title1',
      desc: '',
      args: [],
    );
  }

  /// `Become your own money manager and make every cent count`
  String get auth_desc1 {
    return Intl.message(
      'Become your own money manager and make every cent count',
      name: 'auth_desc1',
      desc: '',
      args: [],
    );
  }

  /// `Know where your money goes`
  String get auth_title2 {
    return Intl.message(
      'Know where your money goes',
      name: 'auth_title2',
      desc: '',
      args: [],
    );
  }

  /// `Track your transaction easily, with categories and financial report`
  String get auth_desc2 {
    return Intl.message(
      'Track your transaction easily, with categories and financial report',
      name: 'auth_desc2',
      desc: '',
      args: [],
    );
  }

  /// `Planning ahead`
  String get auth_title3 {
    return Intl.message(
      'Planning ahead',
      name: 'auth_title3',
      desc: '',
      args: [],
    );
  }

  /// `Setup your budget for each category so you in control`
  String get auth_desc3 {
    return Intl.message(
      'Setup your budget for each category so you in control',
      name: 'auth_desc3',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message(
      'Sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get err_pass_match {
    return Intl.message(
      'Passwords do not match',
      name: 'err_pass_match',
      desc: '',
      args: [],
    );
  }

  /// `Repeat password`
  String get repeat_password {
    return Intl.message(
      'Repeat password',
      name: 'repeat_password',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirm_password {
    return Intl.message(
      'Confirm password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Minimum character length: {minLength}.`
  String err_too_short(Object minLength) {
    return Intl.message(
      'Minimum character length: $minLength.',
      name: 'err_too_short',
      desc: '',
      args: [minLength],
    );
  }

  /// `Only characters and digits are allowed`
  String get err_char_and_digits {
    return Intl.message(
      'Only characters and digits are allowed',
      name: 'err_char_and_digits',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone number, please use format: +1234567890`
  String get err_phone_number {
    return Intl.message(
      'Invalid phone number, please use format: +1234567890',
      name: 'err_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address.`
  String get err_email {
    return Intl.message(
      'Invalid email address.',
      name: 'err_email',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get err_empty_field {
    return Intl.message(
      'This field is required',
      name: 'err_empty_field',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to `
  String get welcome_to {
    return Intl.message(
      'Welcome to ',
      name: 'welcome_to',
      desc: '',
      args: [],
    );
  }

  /// `Cashfy!`
  String get app_name_title {
    return Intl.message(
      'Cashfy!',
      name: 'app_name_title',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Or with`
  String get or_with {
    return Intl.message(
      'Or with',
      name: 'or_with',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get sign_in_google {
    return Intl.message(
      'Sign in with Google',
      name: 'sign_in_google',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dont_have_acount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_acount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
