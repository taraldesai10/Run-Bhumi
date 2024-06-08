import 'package:flutter/material.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';
import 'package:run_bhumi/widget/common_textstyle.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final int? maxLines;
  final double? letterSpacing;
  final TextOverflow? overflow;

  const AppText(
      {Key? key,
      required this.text,
      this.textStyle,
      this.textAlign,
      this.maxLines,
      this.letterSpacing = 1,
      this.overflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        // maxLines: maxLines,
        softWrap: true,
        overflow: overflow,
        style: textStyle ??
            size14SemiBold(
                textColor: AppColors.whiteColor,
                fontWeight: FontWeight.w400,
                letterSpacing: letterSpacing,
                isAirbnb: true));
  }
}
