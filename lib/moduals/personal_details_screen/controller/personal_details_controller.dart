import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalDetailsController extends GetxController{
  RxBool isFocus = false.obs;
  RxBool isFocusSecond = false.obs;
  RxBool isFocusThird = false.obs;
  RxBool isSuffix = false.obs;
  bool isCheck = false;
  RxBool otpEntered = false.obs;
  Rx<TextEditingController> firstNameController = TextEditingController().obs;
  Rx<TextEditingController> lastNameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  isCheckBox(){
    isCheck = !isCheck;
    update();
  }
}