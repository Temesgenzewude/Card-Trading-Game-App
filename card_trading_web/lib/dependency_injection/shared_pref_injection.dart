import 'package:card_trading_web/src/shared_pref/shared_pref_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Create an instance of GetIt for dependency injection
GetIt sl = GetIt.instance;

// Initialize the PrefManager for managing shared preferences
Future<void> initPrefManager() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPrefManager>(
      () => SharedPrefManager(sharedPreferences: sharedPreferences));
}
