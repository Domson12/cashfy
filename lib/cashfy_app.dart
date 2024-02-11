import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/navigation/app_router.dart';
import 'core/theme/cashfy_theme.dart';
import 'gen/l10n.dart';

class CashfyApp extends ConsumerWidget {
  const CashfyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    return MaterialApp.router(
      theme: CashfyTheme.light,
      debugShowCheckedModeBanner: false,
      supportedLocales: S.delegate.supportedLocales,
      routerConfig: appRouter.config(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
