import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class AppColors {
  static const Color buttonBorderColor = Color(0xffDDDDDD);
  static const Color backGroundColor = Color(0xff0A0B09);
  static const Color whiteColor = Color(0xffFFFFFF);
  static const Color subTileTextColor = Color(0xff8990A0);
  static const Color textFieldFiledColor = Color(0xff15171C);
  static const Color bottomsheetColor = Color(0xff262626);
  static const Color tabBorderColor = Color(0xff15171C);
  static const Color deactiveButtonColour = Color(0xff6C6C6B);
  static const Color tabDeactiveColour = Color(0xffB6B6B6);
  static const Color trasparentColor = Colors.transparent;
  static const Color redColor = Colors.red;

}

class ColorRes {
  static Color backgroundColor(BuildContext context) => context.theme.backgroundColor;

  static Color whiteTextColor(BuildContext context) => context.theme.cardColor;

  static Color titleTextColor(BuildContext context) => context.theme.errorColor;

  // static Color headingRowColor(BuildContext context) => context.theme.accentColor;
  // static Color buttonColor(BuildContext context) => context.theme.cursorColor;
  // static Color dropDownColor(BuildContext context) => context.theme.buttonColor;
  static Color textFieldColor(BuildContext context) => context.theme.disabledColor;
  static Color camaraColor(BuildContext context) => context.theme.shadowColor;
  static Color retakeColor(BuildContext context) => context.theme.canvasColor;
  static Color confirmButtonColor(BuildContext context) => context.theme.bottomAppBarColor;
  static Color splashColor(BuildContext context) => context.theme.scaffoldBackgroundColor;
}
