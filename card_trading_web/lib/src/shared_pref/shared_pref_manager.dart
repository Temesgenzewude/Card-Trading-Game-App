import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefManager {
  static final SharedPrefManager _instance = SharedPrefManager._internal();

  factory SharedPrefManager() => _instance;

  SharedPrefManager._internal();

  static SharedPreferences? _sharedPreferences;

  static Future<SharedPreferences> get instance async {
    if (_sharedPreferences != null) return Future.value(_sharedPreferences);
    _sharedPreferences = await SharedPreferences.getInstance();
    return Future.value(_sharedPreferences);
  }

  Future<bool> setString(String key, String value) async {
    final SharedPreferences prefs = await instance;
    return await prefs.setString(key, value);
  }

  Future<String?> getString(String key) async {
    final SharedPreferences prefs = await instance;
    return prefs.getString(key);
  }

  Future<bool> setInt(String key, int value) async {
    final SharedPreferences prefs = await instance;
    return prefs.setInt(key, value);
  }

  Future<int?> getInt(String key) async {
    final SharedPreferences prefs = await instance;
    return prefs.getInt(key);
  }

  Future<bool> setDouble(String key, double value) async {
    final SharedPreferences prefs = await instance;
    return prefs.setDouble(key, value);
  }

  Future<double> getDouble(String key) async {
    final SharedPreferences prefs = await instance;
    return prefs.getDouble(key) ?? 0.0;
  }

  Future<bool> setBool(String key, bool value) async {
    final SharedPreferences prefs = await instance;
    return prefs.setBool(key, value);
  }

  Future<bool> getBool(String key) async {
    final SharedPreferences prefs = await instance;
    return prefs.getBool(key) ?? false;
  }

  Future<bool> remove(String key) async {
    final SharedPreferences prefs = await instance;
    return prefs.remove(key);
  }

  Future<bool> clear() async {
    final SharedPreferences prefs = await instance;
    return prefs.clear();
  }

  Future<bool> containsKey(String key) async {
    final SharedPreferences prefs = await instance;
    return prefs.containsKey(key);
  }

  Future<Set<String>> getKeys() async {
    final SharedPreferences prefs = await instance;
    return prefs.getKeys();
  }

  Future<bool> setStringList(String key, List<String> value) async {
    final SharedPreferences prefs = await instance;
    return prefs.setStringList(key, value);
  }

  Future<List<String>> getStringList(String key) async {
    final SharedPreferences prefs = await instance;
    final result = prefs.getStringList(key);
    return result ?? [];
  }
}
