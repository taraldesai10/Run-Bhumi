import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:run_bhumi/moduals/otp_verify_screen/screen/otp_verify_screen.dart';
import 'package:run_bhumi/moduals/select_city/screen/select_city_screen.dart';


class PhoneNumberAuthentication {
  static String countryCode = "+91";
  static void phoneAuth(context, phone) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: countryCode + phone,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) async {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OtpVerificationScreen(
                  otp: verificationId,
                ),
              ));
        },
        codeAutoRetrievalTimeout: (String verificationId) {});
  }
}

class OtpVerification {
  static void otpVerification(context, String otp, code) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    try {
      PhoneAuthCredential credential =
      PhoneAuthProvider.credential(verificationId: otp, smsCode: code);

      // Sign the user in (or link) with the credential
      await auth.signInWithCredential(credential).then(
            (value) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const SelectCityScreen(),
            ),
          );
        },
      );
    } catch (e) {
      log("wrong otp");
    }
  }
}
