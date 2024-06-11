import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';

class OtpPinput{
  static final defaultPinTheme = PinTheme(
    width: 70,
    height: 60,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300, width: 1.5),
      borderRadius: BorderRadius.circular(20),
    ),
  );
 static final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: AppColor.mainColor, width: 2),
    borderRadius: BorderRadius.circular(20),
  );
 static final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration?.copyWith(
      color: const Color.fromRGBO(234, 239, 243, 1),
    ),
  );
}