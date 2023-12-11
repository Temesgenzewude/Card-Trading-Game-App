import 'package:card_trading_game_app/src/features/auth/presentation/login/responsive/desktop/screens/login_auth_screen.dart';
import 'package:card_trading_game_app/src/features/auth/presentation/signup/responsive/desktop/screens/auth_screen.dart';
import 'package:card_trading_game_app/src/routing/main_router.dart';
import 'package:flutter/material.dart';

import 'src/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainRouter();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Card Trading Game App',
        theme: lightTheme,
        // home: const BrowseSetsScreen(
        //   desktopScaffold: BrowseSetsDesktop(),
        //   mobileScaffold: BrowseSetsMobile(),
        //   tabletScaffold: BrowseSetsTablet(),
        // ),

        home: const SignupAuthScreen());
  }
}
