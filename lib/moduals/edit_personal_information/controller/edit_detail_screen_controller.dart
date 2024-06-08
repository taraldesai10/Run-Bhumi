import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PersonalDetailEditController extends GetxController{
  TextEditingController email = TextEditingController(text: "priyanklathiya1001@gmail.com");
  TextEditingController firstName = TextEditingController(text: "priyank");
  TextEditingController number = TextEditingController(text: "6359398334");
  TextEditingController lastName = TextEditingController(text: "lathiya");
  RxString firstNameText="priyank".obs;
  RxString lastNameText="lathiya".obs;
  RxString numberText="6359398334".obs;
  RxString emailText="priyanklathiya1001@gmail.com".obs;
  FocusNode focusNode = FocusNode();
  RxBool isFirstNameFocused =false.obs;
  RxBool isNumberFocused = false.obs;
  RxBool isLastNameFocused = false.obs;
  RxBool isEmailFocused = false.obs;

}