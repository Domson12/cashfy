// ignore_for_file: avoid_print

import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(),
);

void printWrapped(String text) =>
    RegExp('.{1,800}').allMatches(text).map((m) => m.group(0)).forEach(
          print,
        );
