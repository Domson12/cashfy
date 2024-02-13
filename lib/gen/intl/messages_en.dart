// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(minLength) => "Minimum character length: ${minLength}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "already_have_an_account":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "app_name_title": MessageLookupByLibrary.simpleMessage("Cashfy!"),
        "auth_desc1": MessageLookupByLibrary.simpleMessage(
            "Become your own money manager and make every cent count"),
        "auth_desc2": MessageLookupByLibrary.simpleMessage(
            "Track your transaction easily, with categories and financial report"),
        "auth_desc3": MessageLookupByLibrary.simpleMessage(
            "Setup your budget for each category so you in control"),
        "auth_title1": MessageLookupByLibrary.simpleMessage(
            "Gain total control of your money"),
        "auth_title2":
            MessageLookupByLibrary.simpleMessage("Know where your money goes"),
        "auth_title3": MessageLookupByLibrary.simpleMessage("Planning ahead"),
        "confirm_password":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "dont_have_acount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "err_char_and_digits": MessageLookupByLibrary.simpleMessage(
            "Only characters and digits are allowed"),
        "err_email":
            MessageLookupByLibrary.simpleMessage("Invalid email address."),
        "err_empty_field":
            MessageLookupByLibrary.simpleMessage("This field is required"),
        "err_pass_match":
            MessageLookupByLibrary.simpleMessage("Passwords do not match"),
        "err_phone_number": MessageLookupByLibrary.simpleMessage(
            "Invalid phone number, please use format: +1234567890"),
        "err_too_short": m0,
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "or_with": MessageLookupByLibrary.simpleMessage("Or with"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "repeat_password":
            MessageLookupByLibrary.simpleMessage("Repeat password"),
        "sign_in_google":
            MessageLookupByLibrary.simpleMessage("Sign in with Google"),
        "sign_up": MessageLookupByLibrary.simpleMessage("Sign up"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "welcome_to": MessageLookupByLibrary.simpleMessage("Welcome to ")
      };
}
