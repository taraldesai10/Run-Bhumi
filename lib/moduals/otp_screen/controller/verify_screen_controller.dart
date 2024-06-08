
import 'package:get/get.dart';

class VerifyNumberController extends GetxController with GetTickerProviderStateMixin{
  RxBool otpEntered = false.obs;
  RxBool otpTextFocus = true.obs;
}
