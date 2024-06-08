import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_bhumi/utils/constant/app_constant_images.dart';

TextStyle size12Medium({Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, TextDecoration? decoration, double? letterSpacing, String? fontFamily}) =>
    TextStyle(
      color: textColor,
      fontSize: 12.sp,
      fontWeight: fontWeight ?? FontWeight.w600,
      decoration: decoration,
        fontFamily: fontFamily ?? (isAirbnb ? AppImages.airbnb : AppImages.cormorant),
      letterSpacing: letterSpacing,
    );
TextStyle size10Medium({Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, TextDecoration? decoration, double? letterSpacing, String? fontFamily}) =>
    TextStyle(
        color: textColor,
        fontSize: 10.sp,
        fontWeight: fontWeight ?? FontWeight.w600,
        decoration: decoration,
        fontFamily: fontFamily ?? (isAirbnb ? AppImages.airbnb : AppImages.cormorant),
        letterSpacing: letterSpacing,
    );

TextStyle size13Regular({Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, double? letterSpacing, String? fontFamily}) => TextStyle(
    color: textColor,
    fontSize: 13.sp,
    fontWeight: fontWeight ?? FontWeight.w300,
    letterSpacing: letterSpacing,
    fontFamily: fontFamily ?? (isAirbnb ? AppImages.airbnb : AppImages.cormorant),
);

TextStyle size11SemiBold({Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, String? fontFamily}) => TextStyle(
 color: textColor ,
    fontSize: 11.5.sp,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: fontFamily ?? (isAirbnb ? AppImages.airbnb : AppImages.cormorant),
);

TextStyle size14SemiBold({Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, double? letterSpacing, String? fontFamily}) => TextStyle(
    color: textColor ,
    fontSize: 14.sp,
    fontWeight: fontWeight ?? FontWeight.w700,
    letterSpacing: letterSpacing,
    fontFamily: isAirbnb ? AppImages.airbnb : AppImages.cormorant,
);

TextStyle size15SemiBold({Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, double? letterSpacing, String? fontFamily}) => TextStyle(
    color: textColor,
    fontSize: 15.sp,
    fontWeight: fontWeight ?? FontWeight.w700,
    letterSpacing: letterSpacing,
    fontFamily: fontFamily ?? (isAirbnb ? AppImages.airbnb : AppImages.cormorant),
);

TextStyle size16Medium({Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, double? letterSpacing, String? fontFamily}) => TextStyle(
    color: textColor ?? Colors.white,
    fontSize: 16.sp,
    fontWeight: fontWeight ?? FontWeight.w600,
    letterSpacing: letterSpacing,
    fontFamily: fontFamily ?? (isAirbnb ? AppImages.airbnb : AppImages.cormorant),
);

TextStyle size17Medium({Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, double? letterSpacing, String? fontFamily}) => TextStyle(
    color: textColor,
    fontSize: 17.sp,
    fontWeight: fontWeight ?? FontWeight.w600,
    letterSpacing: letterSpacing,
    fontFamily: fontFamily ?? (isAirbnb ? AppImages.airbnb : AppImages.cormorant),
);

TextStyle size18Medium({Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, double? letterSpacing, String? fontFamily}) => TextStyle(
    color: textColor,
    fontSize: 18.sp,
    fontWeight: fontWeight ?? FontWeight.w400,
    letterSpacing: letterSpacing,
    fontFamily: fontFamily ?? (isAirbnb ? AppImages.airbnb : AppImages.cormorant),
);

TextStyle size19Medium({Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, double? letterSpacing, String? fontFamily}) => TextStyle(
    color: textColor,
    fontSize: 19.sp,
    fontWeight: fontWeight ?? FontWeight.w400,
    letterSpacing: letterSpacing,
    fontFamily: fontFamily ?? (isAirbnb ? AppImages.airbnb : AppImages.cormorant),
);

TextStyle size20Regular({Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, double? letterSpacing, String? fontFamily}) => TextStyle(
    color: textColor,
    fontSize: 20.sp,
    fontWeight: fontWeight ?? FontWeight.w300,
    letterSpacing: letterSpacing,
    fontFamily: fontFamily ?? (isAirbnb ? AppImages.airbnb : AppImages.cormorant),
);

TextStyle size21Regular({Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, double? letterSpacing}) => TextStyle(
color: textColor,
    fontSize: 21.sp,
    fontWeight: fontWeight ?? FontWeight.w300,
    letterSpacing: letterSpacing,
    // fontFamily: isManrope ? AppImages.manrope : AppImages.marcellus,
);

TextStyle size2178Regular({Color? textColor, FontWeight? fontWeight, bool isAirbnb = false, double? letterSpacing}) => TextStyle(
    // color: textColor ?? AppColors.matPurpleColor,
    fontSize: 21.78.sp,
    fontWeight: fontWeight ?? FontWeight.w400,
    letterSpacing: letterSpacing,
    // fontFamily: isManrope ? AppImages.manrope : AppImages.marcellus,
);

TextStyle size24Regular(
        {Color? textColor, FontWeight? fontWeight, bool isAirbnb = true, double? height, double? letterSpacing, String? fontFamily}) =>
    TextStyle(
        color: textColor,
        fontSize: 24.sp,
        fontWeight: fontWeight ?? FontWeight.w500,
        letterSpacing: letterSpacing,
        fontFamily: fontFamily ?? (isAirbnb ? AppImages.airbnb : AppImages.cormorant),
        height: height);

TextStyle size28Regular({Color? textColor, FontWeight? fontWeight, bool isManrope = true, double? letterSpacing, String? fontFamily}) => TextStyle(
    // color: textColor ?? AppColors.darkBackGroundColor,
    fontSize: 28.sp,
    fontWeight: fontWeight ?? FontWeight.w600,
    letterSpacing: letterSpacing,
    fontFamily: fontFamily ?? (isManrope ? AppImages.airbnb : AppImages.cormorant),
);
TextStyle size30Regular({Color? textColor, FontWeight? fontWeight, bool isManrope = true, double? letterSpacing, String? fontFamily}) => TextStyle(
    // color: textColor ?? AppColors.darkBackGroundColor,
    fontSize: 30.sp,
    fontWeight: fontWeight ?? FontWeight.w600,
    letterSpacing: letterSpacing,
    fontFamily: fontFamily ?? (isManrope ? AppImages.airbnb : AppImages.cormorant),
);

TextStyle size32Regular({Color? textColor, FontWeight? fontWeight, bool isManrope = false, double? height, double? letterSpacing, String? fontFamily}) => TextStyle(
    // color: textColor ?? AppColors.textLitePurpleColor,
    fontSize: 32.sp,
    height: height,
    fontWeight: fontWeight ?? FontWeight.w400,
    letterSpacing: letterSpacing,
    fontFamily: fontFamily ?? (isManrope ? AppImages.airbnb : AppImages.cormorant),
);

TextStyle size40Regular({Color? textColor, FontWeight? fontWeight, bool isManrope = false, double? letterSpacing, String? fontFamily}) => TextStyle(
    // color: textColor ?? AppColors.appWhite,
    fontSize: 40.sp,
    fontWeight: fontWeight ?? FontWeight.w400,
    letterSpacing: letterSpacing,
    // fontFamily: fontFamily ?? (isManrope ? AppImages.manrope : AppImages.marcellus),
);

TextStyle size38Regular({Color? textColor, FontWeight? fontWeight, bool isManrope = false, double? letterSpacing, String? fontFamily}) => TextStyle(
    // color: textColor ?? AppColors.appWhite,
    fontSize: 38.sp,
    fontWeight: fontWeight ?? FontWeight.w400,
    letterSpacing: letterSpacing,
    // fontFamily: fontFamily ?? (isManrope ? AppImages.manrope : AppImages.marcellus),
);
