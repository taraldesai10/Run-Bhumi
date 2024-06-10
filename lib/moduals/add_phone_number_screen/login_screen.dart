import 'package:flutter/material.dart';
import 'package:run_bhumi/moduals/otp_screen/screen/otp_verification_screen.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController txtPhoneController = TextEditingController();
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
                  "Login",
                  style: TextStyle(fontSize: 20),
                ),
                Image.asset(
                  "assets/images/login_logo.png",
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 40),
                  child: Text(
                    "Enter phone number to send one time password",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                TextFormField(
                  //
                  controller: txtPhoneController,
                  //
                  cursorColor: AppColors.themeMainColer,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text(
                      "Phone Number",
                      style: TextStyle(color: AppColors.themeMainColer),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 2,
                        color: AppColors.themeMainColer,
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
                      backgroundColor: WidgetStatePropertyAll(
                        AppColors.themeMainColer,
                      ),
                    ),
                    onPressed: () {
                      // PhoneNumberAuthentication.phoneAuth(
                      //     context, txtPhoneController.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpVerificationScreen(),
                          ));
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
