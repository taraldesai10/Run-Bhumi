import 'package:run_bhumi/utils/singletons/preferance.dart';

class AppPrefService {
  static const userTokenKey = "user_token";
  static const refreshTokenKey = "refresh_token";
  static const userEmailKey = "user_email";
  static const getStartedScreen = "GetStartedScreen";

  static String getUserToken() {
    return AppPreferences.instance.getString(key: userTokenKey);
  }

  static clearAppPreferences() {
    return AppPreferences.instance.clearAppPreferences();
  }

  static Future<void> setUserToken({required String userToken}) {
    return AppPreferences.instance
        .setString(key: userTokenKey, value: userToken);
  }

  static Future<void> setRefreshToken({required String refreshToken}) {
    return AppPreferences.instance
        .setString(key: refreshTokenKey, value: refreshToken);
  }

  static String getRefreshToken() {
    return AppPreferences.instance.getString(key: refreshTokenKey);
  }

  static Future<void> setUserEmail({required String userEmail}) {
    return AppPreferences.instance
        .setString(key: userEmailKey, value: userEmail);
  }

  static String getUserEmail() {
    return AppPreferences.instance.getString(key: userEmailKey);
  }

  static setScreen({bool value = false}) {
    return AppPreferences.instance.setBool(key: getStartedScreen, value: value);
  }

  static getScreen() {
    return AppPreferences.instance.getBool(key: getStartedScreen);
  }
}
