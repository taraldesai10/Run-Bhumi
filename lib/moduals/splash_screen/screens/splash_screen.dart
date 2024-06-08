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
      child: Column(
        children: [
          // Expanded(
          //   child: Container(
          //     height: double.infinity,
          //     width: double.infinity,
          //     alignment: Alignment.center,
          //     color: AppColors.backGroundColor,
          //     child:SvgPicture.asset(
          //       height: 75.w,
          //       width: 75.w,
          //       AppImages.appLogo,
          //     ),
          //   ),
          // ),
        ],
      ),
    ));
  }
}
