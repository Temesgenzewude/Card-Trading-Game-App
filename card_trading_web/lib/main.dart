import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:card_trading_web/src/shared_pref/shared_pref_manager.dart';

import 'dependency_injection/shared_pref_injection.dart';
import 'src/routing/main_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  usePathUrlStrategy();

  await initPrefManager();

  final prefManager = sl<SharedPrefManager>();

  prefManager.clear();

// setting value for a given key
  prefManager.setBool('isLoggedIn', false);

  // getting value for a given key

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainRouter();
  }
}
