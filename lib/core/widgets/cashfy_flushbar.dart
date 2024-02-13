import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../utils/extensions.dart';

const Duration _duration = Duration(seconds: 3);
const Duration _animationDuration = Duration(milliseconds: 300);

// ignore: must_be_immutable
class CashfyFlushbar extends Flushbar<void> {
  CashfyFlushbar(
    this.context, {
    required this.content,
    required super.backgroundColor,
    required super.messageColor,
    super.key,
  }) : super(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          borderRadius: BorderRadius.circular(50),
          flushbarStyle: FlushbarStyle.FLOATING,
          boxShadows: const [
            BoxShadow(
              color: Color(0x260F283C),
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
          duration: _duration,
          message: content,
          forwardAnimationCurve: Curves.easeOutCirc,
          animationDuration: _animationDuration,
          dismissDirection: FlushbarDismissDirection.HORIZONTAL,
        );

  factory CashfyFlushbar.warning(
    BuildContext context, {
    required String content,
  }) =>
      CashfyFlushbar(
        context,
        content: content,
        backgroundColor: Colors.yellow[100]!,
        messageColor: Colors.yellow[900],
      );

  factory CashfyFlushbar.success(
    BuildContext context, {
    required String content,
  }) =>
      CashfyFlushbar(
        context,
        content: content,
        backgroundColor: Colors.green[100]!,
        messageColor: Colors.green[900],
      );

  factory CashfyFlushbar.error(
    BuildContext context, {
    required String content,
  }) =>
      CashfyFlushbar(
        context,
        content: content,
        backgroundColor: Colors.red[100]!,
        messageColor: Colors.red[900],
      );

  final BuildContext context;
  final String content;

  @override
  Widget get messageText => Text(
        content,
        style: context.xText.body1.copyWith(
          color: messageColor,
          height: 1.3,
        ),
        textAlign: TextAlign.start,
      );

  Future<void> showWithContext() => show(context);
}
