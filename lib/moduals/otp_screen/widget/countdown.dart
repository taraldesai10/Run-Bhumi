// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';

class Countdown extends AnimatedWidget {
  Countdown({super.key, required this.animation})
      : super(listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

    if (timerText == "0:00") {
      return Text(
        " Resend",
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.whiteColor,
        ),
      );
    } else {
      return Text(
        " $timerText Sec",
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.whiteColor,
        ),
      );
    }
  }
}
