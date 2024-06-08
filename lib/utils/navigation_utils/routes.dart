import 'package:get/get.dart';
import 'package:run_bhumi/moduals/edit_personal_information/screen/edit_personal_information_screen.dart';
import 'package:run_bhumi/moduals/edit_profile/screen/edit_profile_screen.dart';
import 'package:run_bhumi/moduals/otp_screen/screen/otp_verification_screen.dart';
import 'package:run_bhumi/moduals/personal_details_screen/screen/personal_details_screen.dart';
import 'package:run_bhumi/moduals/profile_screen/screen/profile_screen.dart';
import 'package:run_bhumi/moduals/splash_screen/screens/splash_screen.dart';
import 'package:run_bhumi/moduals/start_screen/screen/start_screen.dart';

class Routes {
  static const String splashScreen = "/splashScreen";
  static const String startSCreen = "/startSCreen";
  static const String addPhoneNumberScreen = "/addPhoneNumberScreen";
  static const String charterScreen = "/charterScreen";
  static const String bottomNavBarScreen = "/bottomNavBarScreen";
  static const String emptyLegsScreen = "/emptyLegsScreen";
  static const String profileScreen = "/profileScreen";
  static const String editProfileScreen = "/editProfileScreen";
  static const String bookingScreen = "/bookingScreen";
  static const String datePickerScreen = "/datePickerScreen";
  static const String talkToCharterGtp = "/talkToCharterGtp";
  static const String cityNameOrAiprport = "/cityNameOrAiprport";
  static const String oneWaySearchFlightScreen = "/oneWaySearchFlightScreen";
  static const String otpVerificationScreen = "/otpVerificationScreen";
  static const String profileDetailEditScreen = "/profileDetailEditScreen";
  static const String personalDetailsScreen = "/personalDetailsScreen";
  static const String roundTripSearchScreen = "/roundTripSearchScreen";
  static const String multiCitySearchFlight = "/multiCitySearchFlight";

  static List<GetPage<dynamic>> pages = [
    GetPage<dynamic>(
      name: splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage<dynamic>(
      name: startSCreen,
      page: () => StartSCreen(),
    ),
    GetPage<dynamic>(
      name: profileScreen,
      page: () => const ProfileScreen(),
    ),
    GetPage<dynamic>(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
    ),

    GetPage<dynamic>(
      name: otpVerificationScreen,
      page: () => OtpVerificationScreen(),
    ),
    GetPage<dynamic>(
      name: profileDetailEditScreen,
      page: () => ProfileDetailEditScreen(),
    ),
    GetPage<dynamic>(
      name: personalDetailsScreen,
      page: () => PersonalDetailsScreen(),
    ),
  ];
}
