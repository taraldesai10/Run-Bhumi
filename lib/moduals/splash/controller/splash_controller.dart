import 'dart:async';
import 'package:get/get.dart';
import 'package:run_bhumi/utils/navigation.dart';
import 'package:run_bhumi/utils/navigation_utils/routes.dart';
import 'package:run_bhumi/utils/singletons/preferance.dart';

class SplashController extends GetxController{

 @override
  void onInit() {
    super.onInit();
    timer();
  }
  void timer(){
    Timer(const Duration(seconds: 3), () async{
      // ignore: unrelated_type_equality_checks
      bool isLoggedIn = await  AppPreferences().setBool(key: "isLoggedIn", value: true);
      if (isLoggedIn == false) {
        Navigation.replace(Routes.bottomNavBarScreen);
      } else {
        Navigation.replace(Routes.loginScreen);
      }
    });
  }
}




