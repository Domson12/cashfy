import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../feature/auth/auth_page.dart';
import '../../feature/auth/auth_router.dart';
import '../../feature/auth/login/login_page.dart';
import '../../feature/auth/register/register_page.dart';
import '../../feature/auth/verification/verification_page.dart';
import '../../feature/budget/budget_page.dart';
import '../../feature/dashboard/dashboard_page.dart';
import '../../feature/home/home_page.dart';
import '../../feature/profile/profile_page.dart';
import '../../feature/transactions/transactions_page.dart';

part 'app_router.gr.dart';

final appRouterProvider = Provider((ref) => AppRouter());

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthWrapper.page,
          initial: true,
          children: [
            AutoRoute(page: AuthRoute.page),
            AutoRoute(
              page: DashboardRoute.page,
              children: [
                AutoRoute(page: HomeRoute.page, initial: true),
                AutoRoute(page: TransactionsRoute.page),
                AutoRoute(page: BudgetRoute.page),
                AutoRoute(page: ProfileRoute.page),
              ],
            ),
            AutoRoute(page: LoginRoute.page),
            AutoRoute(page: RegisterRoute.page),
            AutoRoute(
              page: VerificationRoute.page,
            ),
          ],
        ),
      ];
}
