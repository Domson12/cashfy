import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/navigation/app_router.dart';

@RoutePage(name: 'AuthWrapper')
class AuthWrapperPage extends StatelessWidget {
  const AuthWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (BuildContext context, snapshot) {
        return AutoRouter.declarative(
          routes: (_) {
            return [
              if (snapshot.hasData)
                const DashboardRoute()
              else
                const AuthRoute(),
            ];
          },
        );
      },
    );
  }
}
