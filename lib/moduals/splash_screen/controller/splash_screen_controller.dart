import 'package:get/get.dart';
import 'package:run_bhumi/utils/commonservice/app_pref_service.dart';
import 'package:run_bhumi/utils/navigation.dart';
import 'package:run_bhumi/utils/navigation_utils/routes.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateScreen();
  }

  void navigateScreen() {
    bool isSignIn = AppPrefService.getScreen();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (isSignIn == true) {
          Navigation.replace(Routes.bottomNavBarScreen);
        } else {
          Navigation.replace(Routes.startSCreen);
        }
      },
    );
  }
}
