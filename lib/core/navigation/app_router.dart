import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../feature/auth/auth_page.dart';
import '../../feature/auth/login/login_page.dart';
import '../../feature/auth/register/register_page.dart';

part 'app_router.gr.dart';

final appRouterProvider = Provider((ref) => AppRouter());

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthRoute.page,
          initial: true,
        ),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
      ];
}
