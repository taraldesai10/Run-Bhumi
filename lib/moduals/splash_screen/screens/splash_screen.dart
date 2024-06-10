// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';

import '../controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreenController splashController = Get.put(SplashScreenController());
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.trasparentColor,
      ),
      child: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.orange.shade300,
                Colors.blue.shade300,
              ],
            ),
            image: const DecorationImage(
                image: AssetImage(
                  "assets/images/splash_image.png",
                ),
                fit: BoxFit.cover),
          ),
          child: Image.asset(
            "assets/logo/run_bhoomi_logo.png",
          ),
        ),
      ),
    ));
  }
}
