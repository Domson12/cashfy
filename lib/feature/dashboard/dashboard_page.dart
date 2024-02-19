import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/navigation/app_router.dart';
import '../../core/utils/extensions.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeItem = BottomNavigationBarItem(
      icon: const Icon(Icons.home),
      label: context.s.home,
    );
    final transactionsItem = BottomNavigationBarItem(
      icon: const Icon(Icons.attach_money),
      label: context.s.transactions,
    );
    final budgetItem = BottomNavigationBarItem(
      icon: const Icon(Icons.account_balance_wallet),
      label: context.s.budget,
    );
    final profileItem = BottomNavigationBarItem(
      icon: const Icon(Icons.person),
      label: context.s.profile,
    );

    final routes = <PageRouteInfo>[];
    final navigationItems = <BottomNavigationBarItem>[];

    routes.addAll([
      const HomeRoute(),
      const TransactionsRoute(),
      const BudgetRoute(),
      const ProfileRoute(),
    ]);

    navigationItems.addAll([
      homeItem,
      transactionsItem,
      budgetItem,
      profileItem,
    ]);

    return AutoTabsScaffold(
      routes: routes,
    );
  }
}
