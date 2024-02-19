import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../core/utils/extensions.dart';

@RoutePage()
class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'Transactions page',
        style: context.xText.title3,
      ),
    );
  }
}
