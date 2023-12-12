import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/screens/browse_sets.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/screens/desktop_layout.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/mobile/mobile_layout.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/screens/see_card_detail_screen.dart';

import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/screens/desktop_layout.dart';
import 'package:card_trading_web/src/features/home/presentation/screens/home_screen.dart';
import 'package:card_trading_web/src/features/more_options/presentation/responsive/desktop/screens/more_options_screen.dart';
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
        GoRouter(initialLocation: '/${AppRoutes.DesktopHome.name}', routes: [
      GoRoute(
        path: '/${AppRoutes.DesktopHome.name}',
        name: AppRoutes.DesktopHome.name,
        builder: (context, state) => HomeAndBrowseTabs(),
      ),
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
        path: '/${AppRoutes.DesktopSeeCardDetailScreen.name}',
        name: AppRoutes.DesktopSeeCardDetailScreen.name,
        builder: (context, state) => const SeeCardDetailScreen(),
      ),
      GoRoute(
        path: '/${AppRoutes.DesktopBrowseSets.name}',
        name: AppRoutes.DesktopBrowseSets.name,
        builder: (context, state) => const BrowseSetTab(
          desktopScaffold: BrowseSetsDesktop(),
          mobileScaffold: BrowseSetsMobile(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.DesktopCollections.name}',
        name: AppRoutes.DesktopCollections.name,
        builder: (context, state) => const DesktopCollectionsLayout(),
      ),
      GoRoute(
        path: '/${AppRoutes.DesktopMoreOptionsScreen.name}',
        name: AppRoutes.DesktopMoreOptionsScreen.name,
        builder: (context, state) => const MoreOptionsScreen(),
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
