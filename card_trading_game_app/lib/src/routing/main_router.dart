import 'package:card_trading_game_app/src/features/auth/presentation/login/responsive/desktop/screens/login_auth_screen.dart';
import 'package:card_trading_game_app/src/features/auth/presentation/signup/responsive/desktop/screens/auth_screen.dart';
import 'package:card_trading_game_app/src/routing/routes.dart';
import 'package:card_trading_game_app/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainRouter extends StatefulWidget {
  const MainRouter({super.key});

  @override
  State<MainRouter> createState() => _MainRouterState();
}

class _MainRouterState extends State<MainRouter> {
  @override
  Widget build(BuildContext context) {
    final GoRouter router =
        GoRouter(initialLocation: '/${AppRoutes.DesktopLogin.name}', routes: [
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
    ]);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Card Trading App',
      theme: lightTheme,
    );
  }
}
