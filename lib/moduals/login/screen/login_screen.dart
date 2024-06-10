import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/moduals/login/controller/login_controller.dart';
import 'package:run_bhumi/moduals/otp_verify_screen/screen/otp_verify_screen.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';
import 'package:run_bhumi/utils/constant/app_constant_images.dart';
import 'package:run_bhumi/utils/constant/app_string.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  AppString.login,
                  style: TextStyle(fontSize: 20),
                ),
                Image.asset(
                  AppImages.loginImage,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 40),
                  child: Text(
                   ,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                TextFormField(
                  //
                  controller: loginController.txtPhoneController,
                  //
                  cursorColor: AppColor.mainColor,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text(
                      "Phone Number",
                      style: TextStyle(color: AppColor.mainColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColor.mainColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 75,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(AppColor.mainColor),
                    ),
                    onPressed: () {
                      // PhoneNumberAuthentication.phoneAuth(
                      //     context, txtPhoneController.text);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpVerificationScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
