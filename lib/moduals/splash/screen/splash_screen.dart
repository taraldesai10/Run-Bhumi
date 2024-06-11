import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/moduals/bottom_navigation_bar/screen/bottom_navigation_bar_screen.dart';
import 'package:run_bhumi/moduals/login/screen/login_screen.dart';
import 'package:run_bhumi/moduals/splash/controller/splash_controller.dart';
import 'package:run_bhumi/utils/constant/app_constant_images.dart';
import 'package:run_bhumi/utils/singletons/preferance.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Center(
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
                AppImages.splashImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Image.asset(
            AppImages.appLogo,
          ),
        ),
      ),
    );
  }
}
