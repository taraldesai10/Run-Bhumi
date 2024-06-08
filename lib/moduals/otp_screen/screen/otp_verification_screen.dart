import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/moduals/otp_screen/controller/verify_screen_controller.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});
  final VerifyNumberController otpContoller = Get.put(VerifyNumberController());

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.backGroundColor,
      ),
      child: Scaffold(
        backgroundColor: AppColors.backGroundColor,
        body: SafeArea(
            child: Column(
          children: [],
        ) /*CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 30.h,
                        bottom: 20.h,
                      ),
                      child: AppText(
                        text:AppString.enterVerificaationCode,
                        textStyle:
                            size19Medium(textColor: AppColors.whiteColor),
                      ),
                    ),
                    AppText(
                      text:AppString.aSixDigit,
                      textStyle: size13Regular(
                          textColor: AppColors.subTileTextColor,
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        AppText(
                          text: "${AppString.number} +91 902 383 2610 ",
                          textStyle: size13Regular(
                              textColor: AppColors.subTileTextColor,
                              fontWeight: FontWeight.w400),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigation.pop();
                          },
                          child:AppText(text: AppString.wrongNumber,
                            textStyle: size13Regular(
                                textColor: AppColors.whiteColor,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
               Obx(() =>      Center(
                 child: VerificationCode(autofocus: otpContoller.otpTextFocus.value,
                   padding: EdgeInsets.only(bottom: 8.h),
                   itemSize: 35.w,
                   margin: EdgeInsets.symmetric(horizontal: 2.w),
                   underlineWidth: 3.h,
                   underlineUnfocusedColor: AppColors.deactiveButtonColour,
                   textStyle: size21Regular(
                       textColor: AppColors.whiteColor,
                       fontWeight: FontWeight.w500),
                   keyboardType: TextInputType.number,
                   underlineColor: AppColors.whiteColor,
                   length: 6,
                   cursorColor: AppColors.deactiveButtonColour,
                   onCompleted: (String value) {
                     otpContoller.otpTextFocus.value=false;
                     otpContoller.otpTextFocus.refresh();
                     otpContoller.otpEntered.value = true;
                   },
                   onEditing: (bool value) {
                     otpContoller.otpEntered.value = false;
                   },
                 ),
               ).paddingOnly(top: 50.h, bottom: 30.h),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          textAlign: TextAlign.center,
                          text: AppString.didntReceiveCode,
                          textStyle: size13Regular(
                            fontWeight: FontWeight.w300,
                            textColor: AppColors.whiteColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: AppText(
                            textAlign: TextAlign.center,
                            text:AppString.requestAgain,
                            textStyle: size13Regular(
                              fontWeight: FontWeight.w500,
                              textColor: AppColor.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Obx(() => AppButton(
                          onTap: () async {
                           await AppPrefService.setScreen(value: true);
                            Navigation.pushNamed(Routes.bottomNavBarScreen);
                          },
                          borderColor: (otpContoller.otpEntered.value == true)
                              ? AppColor.white
                              : AppColor.deactiveButtonColour,
                          text: AppString.contiNue,
                          textStyle: size15SemiBold(
                            fontWeight: FontWeight.w500,
                            textColor: (otpContoller.otpEntered.value == true)
                                ? AppColors.backGroundColor
                                : AppColor.deactiveButtonColour,
                          ),
                          bColor: (otpContoller.otpEntered.value == true)
                              ? AppColors.whiteColor
                              : AppColors.backGroundColor,
                        ).paddingSymmetric(
                          vertical: 16.h,
                        )),
                  ],
                ).paddingSymmetric(horizontal: 16.w),
              )
            ],
          ),*/
            ),
      ),
    );
  }
}
