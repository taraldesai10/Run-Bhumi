import 'package:get/get.dart';


class AppValidator {
  static String emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

  static String? emailValidator(String? value) {
    RegExp regex = RegExp(emailPattern);
    if (value!.isEmpty) {
      // charterScreenController.emailError.value = true;
      return "Please enter your email";
    } else if (!regex.hasMatch(value)) {
      return "Please enter valid email";
    } else {
    }
    return null;
  }

  static String? displayNameValidator(String? value, msg) {
    if (value!.isEmpty) {
      return msg;
    } else {
    }
    return null;
  }

  static String? validateMobile(String? value) {
    if (value!.isNotEmpty || value == '') {
      if (value.length < 10) {
        return 'Mobile Number must be of 10 digits';
      } else {
        return null;
      }
    }
    return null;
  }

  static String? isValidPassword(String? value) {
    RegExp regex = RegExp(pattern);
    if (value!.isEmpty) {
      return "Please enter your password";
    } else if (!regex.hasMatch(value)) {
      return "Password must be at 8 character long, must be included with 1 capital latter, 1 special character, 1 number";
    }
    return null;
  }

  static String? dateValidator(String? value) {
    if (value!.isEmpty) {
      return "Please select date";
    }
    return null;
  }

  static String? timeValidator(String? value) {
    if (value!.isEmpty) {
      return "Please select time";
    }
    return null;
  }
}
