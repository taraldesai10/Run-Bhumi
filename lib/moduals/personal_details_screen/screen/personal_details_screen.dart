import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/moduals/personal_details_screen/controller/personal_details_controller.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';

class PersonalDetailsScreen extends StatelessWidget {
  PersonalDetailsScreen({super.key});

  final PersonalDetailsController personalDetailsController =
      Get.put(PersonalDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // SliverFillRemaining(
            //   hasScrollBody: true,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Padding(
            //             padding: EdgeInsets.only(
            //               top: 25.h,
            //               bottom: 12.h,
            //             ),
            //             child: AppText(
            //               text: AppString.personalDetails,
            //               textStyle:
            //                   size19Medium(textColor: AppColors.whiteColor),
            //             ),
            //           ),
            //           AppText(
            //             text: AppString.dontWorryWeTake,
            //             textStyle: size13Regular(
            //                 textColor: AppColors.subTileTextColor,
            //                 fontWeight: FontWeight.w400),
            //           ).paddingOnly(bottom: 25.h),
            //           Obx(
            //             () => Container(
            //               decoration: BoxDecoration(
            //                   color: AppColors.textFieldFiledColor,
            //                   borderRadius: BorderRadius.circular(12.r),
            //                   border: Border.all(
            //                       color: personalDetailsController.isFocus.value
            //                           ? AppColors.whiteColor
            //                           : AppColors.trasparentColor)),
            //               child: Padding(
            //                 padding: EdgeInsets.only(
            //                     top: personalDetailsController.isFocus.value
            //                         ? 5.h
            //                         : 5.h,
            //                     left: 16.w,
            //                     bottom: personalDetailsController.isFocus.value
            //                         ? 5.h
            //                         : 5.h),
            //                 child: AppTextField(
            //                   cursorColor: AppColors.whiteColor,
            //                   cursorHeight: 18.h,
            //                   controller:
            //                       personalDetailsController.firstNameController.value,
            //                   lableText: AppString.firstName,
            //                   validator: (p0) {},
            //                   // filled: true,
            //                   // fillColor: AppColors.subTileTextColor,
            //                   contentPadding: EdgeInsets.only(
            //                       top: personalDetailsController.isFocus.value
            //                           ? 17.h
            //                           : 17,
            //                       bottom:
            //                           personalDetailsController.isFocus.value
            //                               ? 0.h
            //                               : 0.h),
            //                   labelStyle: size15SemiBold(
            //                     textColor: AppColors.subTileTextColor,
            //                     fontWeight: FontWeight.w400,
            //                   ),
            //                   onTap: () {
            //                     print("object");
            //                     personalDetailsController.isFocus.value = true;
            //                   },
            //                   onTapOutside: (event) {
            //                     print("object");
            //                     personalDetailsController.isFocus.value = false;
            //                   },
            //                 ).paddingOnly(
            //                     top: personalDetailsController.isFocus.value
            //                         ? 5.h
            //                         : 5.h,
            //                     bottom: personalDetailsController.isFocus.value
            //                         ? 0.h
            //                         : 0.h),
            //               ),
            //             ),
            //           ),
            //           Obx(
            //             () => Container(
            //               decoration: BoxDecoration(
            //                   color: AppColors.textFieldFiledColor,
            //                   borderRadius: BorderRadius.circular(12.r),
            //                   border: Border.all(
            //                       color: personalDetailsController
            //                               .isFocusSecond.value
            //                           ? AppColors.whiteColor
            //                           : AppColors.trasparentColor)),
            //               child: Padding(
            //                 padding: EdgeInsets.only(
            //                     top: personalDetailsController
            //                             .isFocusSecond.value
            //                         ? 5.h
            //                         : 5.h,
            //                     left: 16.w,
            //                     bottom: personalDetailsController
            //                             .isFocusSecond.value
            //                         ? 5.h
            //                         : 5.h),
            //                 child: AppTextField(
            //                   cursorColor: AppColors.whiteColor,
            //                   cursorHeight: 18.h,
            //                   controller:
            //                       personalDetailsController.lastNameController.value,
            //                   lableText: AppString.lastName,
            //                   // filled: true,
            //                   // fillColor: AppColors.subTileTextColor,
            //                   contentPadding: EdgeInsets.only(
            //                       top: personalDetailsController
            //                               .isFocusSecond.value
            //                           ? 17.h
            //                           : 17,
            //                       bottom: personalDetailsController
            //                               .isFocusSecond.value
            //                           ? 0.h
            //                           : 0.h),
            //                   labelStyle: size15SemiBold(
            //                     textColor: AppColors.subTileTextColor,
            //                     fontWeight: FontWeight.w400,
            //                   ),
            //                   onTap: () {
            //                     print("object");
            //                     personalDetailsController.isFocusSecond.value =
            //                         true;
            //                   },
            //                   onTapOutside: (event) {
            //                     print("object");
            //                     personalDetailsController.isFocusSecond.value =
            //                         false;
            //                   },
            //                 ).paddingOnly(
            //                     top: personalDetailsController
            //                             .isFocusSecond.value
            //                         ? 5.h
            //                         : 5.h,
            //                     bottom: personalDetailsController
            //                             .isFocusSecond.value
            //                         ? 0.h
            //                         : 0.h),
            //               ),
            //             ),
            //           ).paddingSymmetric(vertical: 10.h),
            //           Obx(
            //             () => Container(
            //               decoration: BoxDecoration(
            //                   color: AppColors.textFieldFiledColor,
            //                   borderRadius: BorderRadius.circular(12.r),
            //                   border: Border.all(
            //                       color: personalDetailsController
            //                               .isFocusThird.value
            //                           ? AppColors.whiteColor
            //                           : AppColors.trasparentColor)),
            //               child: Padding(
            //                 padding: EdgeInsets.only(
            //                     top:
            //                         personalDetailsController.isFocusThird.value
            //                             ? 5.h
            //                             : 5.h,
            //                     left: 16.w,
            //                     bottom:
            //                         personalDetailsController.isFocusThird.value
            //                             ? 5.h
            //                             : 5.h),
            //                 child: AppTextField(
            //                   cursorColor: AppColors.whiteColor,
            //                   cursorHeight: 18.h,
            //                   controller:
            //                       personalDetailsController.emailController.value,
            //                   lableText: AppString.email1,
            //                   // filled: true,
            //                   // fillColor: AppColors.subTileTextColor,
            //                   contentPadding: EdgeInsets.only(
            //                       top: personalDetailsController
            //                               .isFocusThird.value
            //                           ? 17.h
            //                           : 17,
            //                       bottom: personalDetailsController
            //                               .isFocusThird.value
            //                           ? 0.h
            //                           : 0.h),
            //                   labelStyle: size15SemiBold(
            //                     textColor: AppColors.subTileTextColor,
            //                     fontWeight: FontWeight.w400,
            //                   ),
            //                   onTap: () {
            //                     print("object");
            //                     personalDetailsController.isFocusThird.value =
            //                         true;
            //                   },
            //                   onTapOutside: (event) {
            //                     print("object");
            //                     personalDetailsController.isFocusThird.value =
            //                         false;
            //                   },
            //                 ).paddingOnly(
            //                     top:
            //                         personalDetailsController.isFocusThird.value
            //                             ? 5.h
            //                             : 5.h,
            //                     bottom:
            //                         personalDetailsController.isFocusThird.value
            //                             ? 0.h
            //                             : 0.h),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //       Spacer(),
            //       GetBuilder<PersonalDetailsController>(
            //         builder: (controller) {
            //           return Align(
            //             alignment: Alignment.bottomCenter,
            //             child: Column(
            //               children: [
            //                 Row(
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     GestureDetector(
            //                       onTap: () {
            //                         controller.isCheckBox();
            //                         controller.update();
            //                       },
            //                       child: SizedBox(
            //                         height: 25.h,width: 25.w,
            //                         child: Padding(
            //                           padding:  EdgeInsets.all(3.h),
            //                           child: Container(
            //                             decoration: BoxDecoration(
            //                                 color: controller.isCheck == true
            //                                     ? AppColors.whiteColor
            //                                     : AppColors.trasparentColor,
            //                                 borderRadius:
            //                                     BorderRadius.circular(3.r),
            //                                 border: Border.all(
            //                                     color: AppColors.whiteColor)),
            //                             child: Center(
            //                               child: Icon(
            //                                 Icons.done,
            //                                 color: AppColors.backGroundColor,
            //                                 size: 12,
            //                               ),
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                     ).paddingOnly(right: 10.w),
            //                     Expanded(
            //                       child: AppText(
            //                         text: AppString.iHaveReadAndAgree,
            //                         textStyle: size13Regular(
            //                             textColor: AppColors.whiteColor,
            //                             fontWeight: FontWeight.w400),
            //                         textAlign: TextAlign.start,
            //                         overflow: TextOverflow.visible,
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //                 AppButton(
            //                   onTap: () {
            //                     if (personalDetailsController.isCheck == true &&
            //                         personalDetailsController
            //                             .emailController.value.text.isNotEmpty &&
            //                         personalDetailsController
            //                             .firstNameController.value.text.isNotEmpty &&
            //                         personalDetailsController
            //                             .lastNameController.value.text.isNotEmpty) {
            //                       Navigation.pushNamed(
            //                           Routes.otpVerificationScreen);
            //                     }
            //                   },
            //                   borderColor:
            //                       ((personalDetailsController.isCheck == true &&
            //                               personalDetailsController
            //                                   .emailController.value
            //                                   .text
            //                                   .isNotEmpty &&
            //                               personalDetailsController
            //                                   .firstNameController.value
            //                                   .text
            //                                   .isNotEmpty &&
            //                               personalDetailsController
            //                                   .lastNameController.value
            //                                   .text
            //                                   .isNotEmpty))
            //                           ? AppColors.whiteColor
            //                           : AppColors.deactiveButtonColour,
            //                   text: "Continue",
            //                   textStyle: size15SemiBold(
            //                     fontWeight: FontWeight.w500,
            //                     textColor:
            //                         ((personalDetailsController.isCheck ==
            //                                     true &&
            //                                 personalDetailsController
            //                                     .emailController.value
            //                                     .text
            //                                     .isNotEmpty &&
            //                                 personalDetailsController
            //                                     .firstNameController.value
            //                                     .text
            //                                     .isNotEmpty &&
            //                                 personalDetailsController
            //                                     .lastNameController.value
            //                                     .text
            //                                     .isNotEmpty))
            //                             ? AppColors.backGroundColor
            //                             : AppColors.deactiveButtonColour,
            //                   ),
            //                   bColor:
            //                       ((personalDetailsController.isCheck == true &&
            //                               personalDetailsController
            //                                   .emailController.value
            //                                   .text
            //                                   .isNotEmpty &&
            //                               personalDetailsController
            //                                   .firstNameController.value
            //                                   .text
            //                                   .isNotEmpty &&
            //                               personalDetailsController
            //                                   .lastNameController.value
            //                                   .text
            //                                   .isNotEmpty))
            //                           ? AppColors.whiteColor
            //                           : AppColors.backGroundColor,
            //                 ).paddingSymmetric(
            //                   vertical: 20.h,
            //                 ),
            //               ],
            //             ),
            //           );
            //         },
            //       ),
            //     ],
            //   ).paddingOnly(right: 18.w,left: 18.w,top: 16.h),
            // ),
          ],
        ),
      ),
    );
  }
}
