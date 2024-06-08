
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';
import 'package:run_bhumi/widget/app_text.dart';

class AppButton extends StatelessWidget {
  final double? height;
  final Color? bColor;
  final Color borderColor;
  final bool? isBorder;
  final Widget? child;
  final Widget? widget;
  final String? text;
  final String? name;
  final double? imageHeight;
  final double? imageWidth;
  final double? sizedBoxWidth;
  final Gradient? gradient;
  final BoxFit? fit;
  final TextStyle? textStyle;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onTap;

  const AppButton({
    Key? key,
    this.height,
    this.bColor = AppColors.whiteColor,
    this.borderColor = AppColors.buttonBorderColor,
    this.isBorder = true,
    this.onTap,
    this.child,
    this.text,
    this.name,
    this.imageHeight,
    this.imageWidth,
    this.fit,
    this.widget,
    this.sizedBoxWidth = 12,
    this.textStyle,
    this.gradient,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 58.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(12.r),
            color: bColor,
            gradient: gradient,
            border: isBorder ?? false ? Border.all(color: borderColor) : null),
        child: child ??
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget ?? const SizedBox.shrink(),
                SizedBox(
                  width: sizedBoxWidth,
                ),
                Center(
                  child: AppText(
                    text: text ?? "",
                    textStyle: textStyle,
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
