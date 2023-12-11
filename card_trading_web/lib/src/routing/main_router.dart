import 'package:card_trading_web/src/features/browse_set/presentation/screens/browse_sets.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/screens/responsive/desktop_layout.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/screens/responsive/mobile_layout.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/screens/see_card_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/presentation/login/responsive/desktop/screens/login_auth_screen.dart';
import '../features/auth/presentation/signup/responsive/desktop/screens/auth_screen.dart';
import '../theme/theme.dart';
import 'routes.dart';

class MainRouter extends StatefulWidget {
  const MainRouter({super.key});

  @override
  State<MainRouter> createState() => _MainRouterState();
}

class _MainRouterState extends State<MainRouter> {
  @override
  Widget build(BuildContext context) {
    final GoRouter router =
        GoRouter(initialLocation: '/${AppRoutes.SeeCardDetailScreen.name}', routes: [
      GoRoute(
        path: '/${AppRoutes.DesktopLogin.name}',
        name: AppRoutes.DesktopLogin.name,
        builder: (context, state) => const LoginAuthScreen(),
      ),
      GoRoute(
        path: '/${AppRoutes.DesktopSignup.name}',
        name: AppRoutes.DesktopSignup.name,
        builder: (context, state) => const SignupAuthScreen(),
      ),
      GoRoute(
        path: '/${AppRoutes.SeeCardDetailScreen.name}',
        name: AppRoutes.SeeCardDetailScreen.name,
        builder: (context, state) => const SeeCardDetailScreen(),
      ),
      GoRoute(
        path: '/${AppRoutes.BrowseSets.name}',
        name: AppRoutes.BrowseSets.name,
        builder: (context, state) => const BrowseSetTab(
          desktopScaffold: BrowseSetsDesktop(),
          mobileScaffold: BrowseSetsMobile(),
        ),
      ),
    ]);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Card Trading App',
      theme: lightTheme,
    );
  }
}
