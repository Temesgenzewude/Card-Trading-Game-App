import 'package:card_trading_web/src/shared_pref/shared_pref_manager.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'src/routing/main_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPrefManager = SharedPrefManager();
  sharedPrefManager.setBool('isLoggedIn', true);
  print(await sharedPrefManager.getBool('isLoggedIn'));

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainRouter();
  }
}
