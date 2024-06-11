import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';
import 'package:run_bhumi/moduals/select_city/screen/select_city_screen.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';
import 'package:run_bhumi/utils/constant/app_constant_images.dart';
import 'package:run_bhumi/utils/constant/app_string.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: Lottie.asset(
                AppImages.successImage,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
             AppString.success,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 50),
                child: Text(
                AppString.successTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(AppColor.mainColor),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectCityScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    AppString.continue1,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
