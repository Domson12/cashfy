import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../core/utils/extensions.dart';

@RoutePage()
class BudgetPage extends StatelessWidget {
  const BudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Bugdet page', style: context.xText.title3),
    );
  }
}
