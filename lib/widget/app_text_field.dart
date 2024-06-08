import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';
import 'package:run_bhumi/utils/constant/app_constant_images.dart';
import 'package:run_bhumi/widget/common_textstyle.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final Color color;
  final TextStyle? labelStyle;
  final String? hintText;
  final String? errorText;
  final TextStyle? hintStyle;
  final Color focusColor;
  final Color? fillColor;
  final TextStyle? style;
  final TextInputType? keyboardType;
  final double? fontSize;
  final String? fontFamily;
  final String? lableText;
  final FontWeight? fontWeight;
  final Color? hintTextColor;
  final FontStyle? fontStyle;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? child;
  final Widget? suffix;
  final Widget? prefix;
  final bool? isSuffix;
  final bool? isErrorText;
  final bool? readOnly;
  final bool? isPrefix;
  final bool? filled;
  final int? maxLength;
  final int? maxLine;
  final int? minLine;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final void Function()? onTap;
  final TapRegionCallback? onTapOutside;
  final ValueChanged<String>? onChanged;
  final Color? cursorColor;
  final InputDecoration? decoration;
  final bool? obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final double? cursorHeight;
  final InputBorder? focusedBorder;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final String? Function(String?)? validator;
  final bool? enabled;
  final bool? showCursor;
  final bool? autoFocus;

  const AppTextField(
      {Key? key,
      required this.controller,
      this.color = AppColors.trasparentColor,
      this.floatingLabelBehavior,
      this.labelStyle,
      this.autoFocus,
      this.hintText,
      this.hintStyle,
      this.focusColor = AppColors.trasparentColor,
      this.style,
      this.onTapOutside,
      this.keyboardType,
      this.fontSize,
      this.fontFamily,
      this.fontWeight,
      this.hintTextColor,
      this.fontStyle,
      this.lableText,
      this.child,
      this.isSuffix = true,
      this.suffix,
      this.isPrefix = true,
      this.prefix,
      this.onTap,
      this.maxLength,
      this.prefixIcon,
      this.suffixIcon,
      this.focusNode,
      this.contentPadding,
      this.onChanged,
      this.readOnly = false,
      this.maxLine,
      this.minLine,
      this.cursorColor,
      this.inputFormatters,
      this.decoration,
      this.obscureText,
      this.textInputAction,
      this.errorText,
      this.isErrorText,
      this.validator,
      this.filled,
      this.fillColor,
      this.cursorHeight,
      this.focusedBorder,
      this.border,
      this.enabledBorder,
      this.enabled,
      this.showCursor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus ?? false,
      onChanged: onChanged,
      onTap: onTap,
      focusNode: focusNode,
      inputFormatters: inputFormatters ?? [],
      textInputAction: textInputAction ?? TextInputAction.done,
      onTapOutside: onTapOutside,
      style: style ??
          TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: AppImages.airbnb,
              fontSize: 16.sp,
              // height: 1.8,
              color: AppColors.whiteColor),
      controller: controller,
      cursorColor:
          cursorColor ?? AppColors.textFieldFiledColor.withOpacity(0.8),
      maxLength: maxLength,
      maxLines: maxLine,
      minLines: minLine,
      readOnly: readOnly ?? true,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      validator: validator,
      cursorHeight: cursorHeight,
      showCursor: showCursor,
      decoration: decoration ??
          InputDecoration(
              alignLabelWithHint: true,
              isDense: true,
              enabled: enabled ?? true,
              filled: filled,
              fillColor: fillColor,
              label: Text(lableText ?? ""),
              prefixIcon: prefixIcon != null
                  ? Padding(
                      padding: EdgeInsets.all(12.w),
                      child: prefixIcon,
                    )
                  : null,
              suffixIcon: suffixIcon,
              suffix: suffix ?? const SizedBox.shrink(),
              prefix: prefix ?? const SizedBox.shrink(),
              floatingLabelBehavior: floatingLabelBehavior,
              labelStyle: labelStyle ??
                  size16Medium(
                      isAirbnb: true,
                      fontWeight: FontWeight.w400,
                      textColor: AppColors.subTileTextColor),
              hintText: hintText,
              errorText: isErrorText == true ? errorText : null,
              hintStyle: hintStyle ??
                  size14SemiBold(
                    isAirbnb: true,
                    fontWeight: FontWeight.w400,
                    textColor: AppColors.subTileTextColor,
                  ),
              contentPadding: contentPadding ?? EdgeInsets.zero,
              // EdgeInsets.only(
              //     bottom: prefixIcon != null ? 10.h : 5.h,
              //     top: 0.h,
              //     left: 10.w,
              //     right: 10.w),
              errorStyle: size10Medium(
                  textColor: AppColors.redColor, fontWeight: FontWeight.w400),
              focusedBorder: focusedBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: focusColor, width: 1.5.w),
                  ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: Colors.red, width: 1.5.w),
              ),
              border: border ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: color, width: 1.5.w),
                  ),
              enabledBorder: enabledBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: color, width: 1.5.w),
                  )),
    );
  }
}
