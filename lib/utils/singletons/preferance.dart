
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static final AppPreferences _instance = AppPreferences._();

  factory AppPreferences() {
    return _instance;
  }

  AppPreferences._();

  static AppPreferences get instance => _instance;
  static SharedPreferences? prefs;

  Future<void> initialAppPreference() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<void> setString({required String key, required String value}) async {
    await prefs?.setString(key, value);
  }

  Future<void> setInt({required String key, required int value}) async {
    await prefs?.setInt(key, value);
  }

  Future<bool> setBool({required String key, required bool value}) async {
    await prefs?.setBool(key, value);
    return value;
  }

  Future<void> setDouble({required String key, required double value}) async {
    await prefs?.setDouble(key, value);
  }

  bool getBool({required String key}) {
    return prefs?.getBool(key) ?? false;
  }

  String getString({required String key}) {
    return prefs?.getString(key) ?? "";
  }

  int getInt({required String key}) {
    return prefs?.getInt(key) ?? 0;
  }

  double getDouble({required String key}) {
    return prefs?.getDouble(key) ?? 0.0;
  }

  void clearAppPreferences() {
    prefs?.clear();
  }
}
