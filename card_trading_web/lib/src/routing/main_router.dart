import 'package:card_trading_web/src/common_widgets/404_page.dart';
import 'package:card_trading_web/src/common_widgets/home_and_browse.dart';
import 'package:card_trading_web/src/features/auth/presentation/forgot_password/responsive/desktop/screens/forgot_password_screen.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/screens/browse_sets.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/screens/browse_sets_desktop.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/screens/card_description_screen_desktop.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/desktop/screens/see_card_detail_screen_desktop.dart';
import 'package:card_trading_web/src/features/browse_set/presentation/responsive/mobile/mobile_layout.dart';
import 'package:card_trading_web/src/features/collections/presentation/responsive/screens/responsive/desktop/screens/collections_desktop.dart';
import 'package:card_trading_web/src/features/more_options/presentation/responsive/desktop/screens/more_options_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common_widgets/404_page.dart';
import '../common_widgets/home_and_browse.dart';
import '../features/auth/presentation/forgot_password/responsive/desktop/screens/forgot_password_screen.dart';
import '../features/auth/presentation/login/responsive/desktop/screens/desktop_login.dart';
import '../features/auth/presentation/signup/responsive/desktop/screens/auth_screen.dart';
import '../features/browse_set/presentation/responsive/desktop/screens/browse_sets.dart';
import '../features/browse_set/presentation/responsive/desktop/screens/browse_sets_desktop.dart';
import '../features/browse_set/presentation/responsive/desktop/screens/card_description_screen_desktop.dart';
import '../features/browse_set/presentation/responsive/desktop/screens/see_card_detail_screen_desktop.dart';
import '../features/browse_set/presentation/responsive/mobile/mobile_layout.dart';
import '../features/collections/presentation/responsive/screens/responsive/desktop/screens/collections_desktop.dart';
import '../features/contact_us/presentation/screens/contact_us_screen.dart';
import '../features/more_options/presentation/responsive/desktop/screens/more_options_screen.dart';
import '../features/profile/presentation/screens/profile_screen.dart';
import '../features/terms_and_privacy/presentation/screens/privacy_screen.dart';
import '../features/terms_and_privacy/presentation/screens/terms_of_use_screen.dart';
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
    final GoRouter router = GoRouter(
      errorPageBuilder: (context, state) {
        return PageNotFoundScreen();
      },
      initialLocation: '/${AppRoutes.DesktopHome.name}',
      routes: [
        GoRoute(
          path: '/${AppRoutes.DesktopHome.name}',
          name: AppRoutes.DesktopHome.name,
          pageBuilder: (context, state) =>
              buildCustomTransitionForPage(context, state, HomeAndBrowseTabs()),
        ),
        GoRoute(
            path: '/${AppRoutes.DesktopCardDetailScreen.name}',
            name: AppRoutes.DesktopCardDetailScreen.name,
            pageBuilder: (context, state) => buildCustomTransitionForPage(
                context, state, const CardDetailScreenDesktop())),
        GoRoute(
          path: '/${AppRoutes.DesktopLogin.name}',
          name: AppRoutes.DesktopLogin.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const DesktopLogin()),
        ),
        GoRoute(
          path: '/${AppRoutes.DesktopSignup.name}',
          name: AppRoutes.DesktopSignup.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const SignupDesktop()),
        ),
        GoRoute(
          path: '/${AppRoutes.DesktopSeeCardDetailScreen.name}',
          name: AppRoutes.DesktopSeeCardDetailScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const SeeCardDetailScreenDesktop()),
        ),
        GoRoute(
            path: '/${AppRoutes.DesktopBrowseSets.name}',
            name: AppRoutes.DesktopBrowseSets.name,
            pageBuilder: (context, state) => buildCustomTransitionForPage(
                  context,
                  state,
                  const BrowseSetTab(
                    desktopScaffold: BrowseSetsDesktop(),
                    mobileScaffold: BrowseSetsMobile(),
                  ),
                )),
        GoRoute(
          path: '/${AppRoutes.DesktopCollections.name}',
          name: AppRoutes.DesktopCollections.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const DesktopCollectionsLayout()),
        ),
        GoRoute(
          path: '/${AppRoutes.DesktopMoreOptionsScreen.name}',
          name: AppRoutes.DesktopMoreOptionsScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const MoreOptionsScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.DesktopEditProfileScreen.name}',
          name: AppRoutes.DesktopEditProfileScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const ProfileScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.DesktopContactUsScreen.name}',
          name: AppRoutes.DesktopContactUsScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const ContactUsScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.DesktopPrivacyScreen.name}',
          name: AppRoutes.DesktopPrivacyScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const PrivacyScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.DesktopTermsScreen.name}',
          name: AppRoutes.DesktopTermsScreen.name,
          pageBuilder: (context, state) {
            return buildCustomTransitionForPage(
                context, state, const TermsOfUseScreen());
          },
        ),
        GoRoute(
          path: '/${AppRoutes.ForgotPasswordScreen.name}',
          name: AppRoutes.ForgotPasswordScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const ForgotPasswordScreen()),
        ),
      ],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Card Trading App',
      theme: lightTheme,
    );
  }

  CustomTransitionPage<dynamic> buildCustomTransitionForPage(
      BuildContext context, GoRouterState state, Widget page) {
    return CustomTransitionPage(
        key: state.pageKey,
        transitionDuration: const Duration(seconds: 0),
        child: page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
              child: child);
        });
  }
}
