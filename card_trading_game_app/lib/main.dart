import 'package:card_trading_game_app/src/features/browse_set/presentation/screens/browse_sets.dart';
import 'package:card_trading_game_app/src/features/browse_set/presentation/screens/responsive/desktop_layout.dart';
import 'package:card_trading_game_app/src/features/browse_set/presentation/screens/responsive/mobile_layout.dart';
import 'package:card_trading_game_app/src/features/browse_set/presentation/screens/responsive/tablet_layout.dart';
import 'package:card_trading_game_app/src/features/browse_set/presentation/screens/see_card_detail_screen.dart';
import 'package:card_trading_game_app/src/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'src/features/home/presentation/screens/home_screen.dart';
import 'src/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card Trading Game App',
      theme: lightTheme,
      // home: const BrowseSetsScreen(
      //   desktopScaffold: BrowseSetsDesktop(),
      //   mobileScaffold: BrowseSetsMobile(),
      //   tabletScaffold: BrowseSetsTablet(),
      // ),

      home: const SeeCardDetailScreen()
    );
  }
}
