import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pinput/pinput.dart';
import 'package:run_bhumi/moduals/otp_verify_screen/controller/otp_verification_controller.dart';
import 'package:run_bhumi/moduals/otp_verify_screen/widget/pinput.dart';
import 'package:run_bhumi/moduals/success/screen/success_screen.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';
import 'package:run_bhumi/utils/constant/app_constant_images.dart';
import 'package:run_bhumi/utils/constant/app_string.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key, this.otp});
  final String? otp;
  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {

   OtpVerificationController otpVerificationController = Get.put(OtpVerificationController());
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.arrow_left,
            color: Colors.grey,
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
           AppString.verificationCode,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 40),
                  child: Text(
                   AppString.otpVerificationTitle,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Center(
                  child: Pinput(
                    length: 6,
                    defaultPinTheme: OtpPinput.defaultPinTheme,
                    focusedPinTheme:OtpPinput.focusedPinTheme,
                    submittedPinTheme: OtpPinput.submittedPinTheme,
                    onChanged: (value) {
                      otpVerificationController.code = value;
                    },
                    showCursor: true,
                    onCompleted: (pin) => log(pin),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 75,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(AppColor.mainColor),
                    ),
                    onPressed: () async {
                      //
                      //otp verfication code
                      //

                      // OtpVerification.otpVerification(
                      //     context, widget.otp!, code);

                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SuccessScreen(),
                          ));
                    },
                    child: const Text(
                    AppString.confirm,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 05,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
              AppString.didNtGetOtp,
                      style: TextStyle(
                        fontSize: 9,
                      ),
                    ),
                    Text(
                      "Resend in 30 second",
                      style: TextStyle(
                        fontSize: 9,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Image.asset(AppImages.otpScreenImage)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
