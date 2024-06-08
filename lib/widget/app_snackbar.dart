import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/widget/app_text.dart';
import 'package:run_bhumi/widget/common_textstyle.dart';

class AppSnackBar {
  static void showSnackBar({
    required String message,
    String? title,
    bool? isSuccess,
  }) {
    Get.snackbar(
      title == null
          ? isSuccess ?? false
              ? "true"
              : "false"
          : "",
      message,
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.zero,
      borderRadius: 0,
      snackStyle: SnackStyle.FLOATING,
      messageText: Row(
        children: [
          Expanded(
            child: AppText(
              text: message,
              textStyle: size16Medium(),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: Get.back,
            child: const Icon(Icons.close, color: Colors.white, size: 12),
          )
        ],
      ),
      titleText: Container(),
      backgroundColor: isSuccess ?? false ? Colors.green : Colors.red,
      animationDuration: const Duration(milliseconds: 800),
      duration: const Duration(seconds: 2),
      colorText: Colors.white,
      // isDismissible: false,
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 6),
    );
  }
}
