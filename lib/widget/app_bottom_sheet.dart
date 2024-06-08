import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';

Future<void> appBottomSheet(
    {required BuildContext context,
    required Widget child,
    Color? sheetColor}) async {
  return await showModalBottomSheet(
    backgroundColor: sheetColor ?? AppColors.bottomsheetColor,
    isScrollControlled: true,
    context: context,
    enableDrag: false,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(15.r),
        topLeft: Radius.circular(15.r),
      ),
    ),
    builder: (BuildContext context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter stateSetter) {
        return child;
      });
    },
  );
}
