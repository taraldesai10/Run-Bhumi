import 'package:get/get.dart';
import 'package:run_bhumi/moduals/bottom_navigation_bar/screen/bottom_navigation_bar_screen.dart';
import 'package:run_bhumi/moduals/login/screen/login_screen.dart';


class Routes {

  static const String bottomNavBarScreen = "/bottomNavBarScreen";
  static const String emptyLegsScreen = "/emptyLegsScreen";
  static const String profileScreen = "/profileScreen";
  static const String editProfileScreen = "/editProfileScreen";
  static const String bookingScreen = "/bookingScreen";
  static const String datePickerScreen = "/datePickerScreen";
  static const String talkToCharterGtp = "/talkToCharterGtp";
  static const String cityNameOrAiprport = "/cityNameOrAiprport";
  static const String oneWaySearchFlightScreen = "/oneWaySearchFlightScreen";
  static const String loginScreen = "/loginScreen";
  static const String profileDetailEditScreen = "/profileDetailEditScreen";
  static const String personalDetailsScreen = "/personalDetailsScreen";
  static const String roundTripSearchScreen = "/roundTripSearchScreen";
  static const String multiCitySearchFlight = "/multiCitySearchFlight";

  static List<GetPage<dynamic>> pages = [
    // GetPage<dynamic>(
    //   name: splashScreen,
    //   page: () => SplashScreen(),
    // ),
    // GetPage<dynamic>(
    //   name: startSCreen,
    //   page: () => StartSCreen(),
    // ),
    // GetPage<dynamic>(
    //   name: profileScreen,
    //   page: () => const ProfileScreen(),
    // ),
    // GetPage<dynamic>(
    //   name: editProfileScreen,
    //   page: () => EditProfileScreen(),
    // ),
    // GetPage<dynamic>(
    //   name: otpVerificationScreen,
    //   page: () => OtpVerificationScreen(),
    // ),
    // GetPage<dynamic>(
    //   name: profileDetailEditScreen,
    //   page: () => ProfileDetailEditScreen(),
    // ),
    GetPage<dynamic>(
      name: loginScreen,
      page: () => LogInScreen(),
    ),
    GetPage<dynamic>(
      name: bottomNavBarScreen,
      page: () => BottomNav(),
    ),
  ];
}
