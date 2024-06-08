import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/moduals/add_phone_number_screen/controller/app_phone_number_screen_controller.dart';
import 'package:run_bhumi/moduals/edit_personal_information/controller/edit_detail_screen_controller.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';

// ignore: must_be_immutable
class ProfileDetailEditScreen extends StatelessWidget {
  ProfileDetailEditScreen({super.key});

  final PersonalDetailEditController pesonalDetailEditController = Get.find();

  final AddPhoneNumberScreenController addPhoneNumberScreenController =
      Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backGroundColor,
        body: Column(
          children: [
            // BookingAppBar(
            //   title: AppString.editProfileInformation,
            //   isNavigation: true,
            //   changeType: false,
            //   icon: const Icon(
            //     CupertinoIcons.arrow_left,
            //     color: AppColor.white,
            //   ),
            // ),
            // Expanded(
            //   child: SingleChildScrollView(
            //     child: Column(
            //       children: [
            //         Obx(
            //           () => Container(
            //             decoration: BoxDecoration(
            //                 color: AppColors.textFieldFiledColor,
            //                 borderRadius: BorderRadius.circular(12.r),
            //                 border: Border.all(
            //                     color: pesonalDetailEditController.isFirstNameFocused.value
            //                         ? AppColors.whiteColor
            //                         : AppColors.trasparentColor)),
            //             child: Padding(
            //               padding: EdgeInsets.only(
            //                   top: 5.h, left: 16.w, bottom: 5.h),
            //               child: AppTextField(autoFocus:
            //               pesonalDetailEditController
            //                   .isFirstNameFocused.value ,
            //                 cursorColor: AppColors.trasparentColor,
            //                 cursorHeight: 18.h,
            //                 controller: pesonalDetailEditController.firstName,
            //                 lableText: AppString.firstName2,
            //                 // filled: true,
            //                 // fillColor: AppColors.subTileTextColor,
            //                 contentPadding:
            //                     EdgeInsets.only(top: 17.h, bottom: 0.h),
            //                 labelStyle: size15SemiBold(
            //                   textColor: AppColors.subTileTextColor,
            //                   fontWeight: FontWeight.w400,
            //                 ),
            //                 onTap: () {
            //                   pesonalDetailEditController
            //                       .isFirstNameFocused.value = true;
            //                 },
            //                 onChanged: (value) {
            //                   pesonalDetailEditController.firstNameText.value =
            //                       pesonalDetailEditController.firstName.text;
            //                 },
            //                 onTapOutside: (event) {
            //                   pesonalDetailEditController
            //                       .isFirstNameFocused.value = false;
            //                 },
            //               ).paddingOnly(top: 5.h, bottom: 0.h),
            //             ),
            //           ),
            //         ).paddingOnly(top: 16.h),
            //         Obx(
            //           () => Container(
            //             decoration: BoxDecoration(
            //                 color: AppColors.textFieldFiledColor,
            //                 borderRadius: BorderRadius.circular(12.r),
            //                 border: Border.all(
            //                     color: pesonalDetailEditController
            //                             .isLastNameFocused.value
            //                         ? AppColors.whiteColor
            //                         : AppColors.trasparentColor)),
            //             child: Padding(
            //               padding: EdgeInsets.only(
            //                   top: 5.h, left: 16.w, bottom: 5.h),
            //               child: AppTextField(autoFocus:
            //               pesonalDetailEditController
            //                   .isLastNameFocused.value  ,
            //                 cursorColor: AppColors.trasparentColor,
            //                 cursorHeight: 18.h,
            //                 controller: pesonalDetailEditController.lastName,
            //                 lableText: AppString.lastName2,
            //
            //                 // filled: true,
            //                 // fillColor: AppColors.subTileTextColor,
            //                 contentPadding:
            //                     EdgeInsets.only(top: 17.h, bottom: 0.h),
            //                 labelStyle: size15SemiBold(
            //                   textColor: AppColors.subTileTextColor,
            //                   fontWeight: FontWeight.w400,
            //                 ),
            //                 onChanged: (value) {
            //                   pesonalDetailEditController.lastNameText.value =
            //                       pesonalDetailEditController.lastName.text;
            //                 },
            //                 onTap: () {
            //                   pesonalDetailEditController
            //                       .isLastNameFocused.value = true;
            //                 },
            //                 onTapOutside: (event) {
            //                   pesonalDetailEditController
            //                       .isLastNameFocused.value = false;
            //                 },
            //               ).paddingOnly(top: 5.h, bottom: 0.h),
            //             ),
            //           ),
            //         ).paddingOnly(top: 10.h),
            //         AppText(
            //           text:AppString.wellText,
            //           textStyle: size13Regular(
            //               textColor: AppColors.subTileTextColor,
            //               fontWeight: FontWeight.w400),
            //         ).paddingOnly(top: 16.h),
            //         Obx(
            //           () => Container(
            //             decoration: BoxDecoration(
            //                 color: AppColors.textFieldFiledColor,
            //                 borderRadius: BorderRadius.circular(12.r),
            //                 border: Border.all(
            //                     color: pesonalDetailEditController
            //                             .isNumberFocused.value
            //                         ? AppColors.buttonBorderColor
            //                         : AppColors.trasparentColor)),
            //             child: Padding(
            //               padding: EdgeInsets.only(
            //                   top: pesonalDetailEditController
            //                           .isNumberFocused.value
            //                       ? 10.h
            //                       : 8.h,
            //                   bottom: pesonalDetailEditController
            //                           .isNumberFocused.value
            //                       ? 0.h
            //                       : 3.h,
            //                   right: 16.w,
            //                   left: 16.w),
            //               // EdgeInsets.symmetric(
            //               //     vertical: 10.h, horizontal: 16.w),
            //               child: Row(
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Padding(
            //                     padding: EdgeInsets.only(
            //                       right: 8.w,
            //                       bottom: pesonalDetailEditController
            //                               .isNumberFocused.value
            //                           ? 6.h
            //                           : 3.h,
            //                       top: pesonalDetailEditController
            //                               .isNumberFocused.value
            //                           ? 0.h
            //                           : 2.h,
            //                     ),
            //                     child: InkWell(
            //                       onTap: () {
            //                         bottomSheet(context);
            //                       },
            //                       child: Center(
            //                         child: Row(
            //                           children: [
            //                             Obx(() => AppText(
            //                                 text: addPhoneNumberScreenController
            //                                     .countryCode
            //                                     .toString())),
            //                             const Icon(
            //                               Icons.keyboard_arrow_down_sharp,
            //                               color: AppColors.subTileTextColor,
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                   Expanded(
            //                     child: AppTextField(autoFocus:
            //                     pesonalDetailEditController
            //                         .isNumberFocused.value  ,
            //                       keyboardType: TextInputType.phone,
            //                       cursorHeight: 18.h,
            //                       contentPadding: EdgeInsets.only(
            //                           top: pesonalDetailEditController
            //                                   .isNumberFocused.value
            //                               ? 17.h
            //                               : 15,
            //                           bottom: addPhoneNumberScreenController
            //                                   .isFocus.value
            //                               ? 0.h
            //                               : 0.h),
            //                       cursorColor: AppColors.whiteColor,
            //                       controller:
            //                           pesonalDetailEditController.number,
            //                       lableText: "Enter phone number",
            //                       labelStyle: size15SemiBold(
            //                         textColor: AppColors.subTileTextColor,
            //                         fontWeight: FontWeight.w400,
            //                       ),
            //                       onTap: () {
            //                         pesonalDetailEditController
            //                             .isNumberFocused.value = true;
            //                       },
            //                       onChanged: (value) {
            //                         pesonalDetailEditController
            //                                 .numberText.value =
            //                             pesonalDetailEditController.number.text;
            //                       },
            //                       onTapOutside: (event) {
            //                         pesonalDetailEditController
            //                             .isNumberFocused.value = false;
            //                       },
            //                     ).paddingOnly(
            //                         top: pesonalDetailEditController
            //                                 .isNumberFocused.value
            //                             ? 5.h
            //                             : 5.h,
            //                         bottom: pesonalDetailEditController
            //                                 .isNumberFocused.value
            //                             ? 0.h
            //                             : 0.h),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ).paddingOnly(bottom: 15.h, top: 10.h),
            //         Obx(
            //           () => Container(
            //             decoration: BoxDecoration(
            //                 color: AppColors.textFieldFiledColor,
            //                 borderRadius: BorderRadius.circular(12.r),
            //                 border: Border.all(
            //                     color: pesonalDetailEditController
            //                             .isEmailFocused.value
            //                         ? AppColors.whiteColor
            //                         : AppColors.trasparentColor)),
            //             child: Padding(
            //               padding: EdgeInsets.only(
            //                   top: 5.h, left: 16.w, bottom: 5.h),
            //               child: AppTextField(autoFocus:
            //               pesonalDetailEditController.isEmailFocused.value ,
            //                 cursorColor: AppColors.trasparentColor,
            //                 cursorHeight: 18.h,
            //                 controller: pesonalDetailEditController.email,
            //                 lableText: AppString.yourEmail,
            //
            //                 // filled: true,
            //                 // fillColor: AppColors.subTileTextColor,
            //                 contentPadding:
            //                     EdgeInsets.only(top: 17.h, bottom: 0.h),
            //                 labelStyle: size15SemiBold(
            //                   textColor: AppColors.subTileTextColor,
            //                   fontWeight: FontWeight.w400,
            //                 ),
            //                 onTap: () {
            //                   pesonalDetailEditController.isEmailFocused.value =
            //                       true;
            //                 },
            //                 onChanged: (value) {
            //                   pesonalDetailEditController.emailText.value =
            //                       pesonalDetailEditController.email.text;
            //                 },
            //                 onTapOutside: (event) {
            //                   pesonalDetailEditController.isEmailFocused.value =
            //                       false;
            //                 },
            //               ).paddingOnly(top: 5.h, bottom: 0.h),
            //             ),
            //           ),
            //         ).paddingOnly(top: 10.h),
            //       ],
            //     ).paddingSymmetric(horizontal: 16.w),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  // bottomSheet(BuildContext context) {
  //   return appBottomSheet(
  //     context: context,
  //     child: Container(
  //       height: MediaQuery.of(context).size.height / 2,
  //       decoration: BoxDecoration(
  //         color: AppColors.bottomsheetColor,
  //         borderRadius: BorderRadius.only(
  //           topRight: Radius.circular(12.r),
  //           topLeft: Radius.circular(12.r),
  //         ),
  //       ),
  //       child: Padding(
  //         padding: EdgeInsets.symmetric(
  //           vertical: 20.h,
  //           horizontal: 16.w,
  //         ),
  //         child: ListView.builder(
  //           itemCount: addPhoneNumberScreenController.countryCodeList.length,
  //           itemBuilder: (context, index) {
  //             return GestureDetector(
  //               // behavior: HitTestBehavior.opaque,
  //               onTap: () {
  //                 addPhoneNumberScreenController.countryCode.value =
  //                     addPhoneNumberScreenController.countryCodeList[index]
  //                         .toString()
  //                         .split(" ")
  //                         .first;
  //                 Navigation.pop();
  //                 // qualificationDataController.languageList[index].value?.value = !(qualificationDataController.languageList[index].value?.value ?? true);
  //               },
  //               child: Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: AppText(
  //                   text:
  //                       addPhoneNumberScreenController.countryCodeList[index] ??
  //                           "",
  //                   textStyle: size15SemiBold(
  //                       textColor: AppColors.whiteColor,
  //                       fontWeight: FontWeight.w400),
  //                 ).paddingOnly(bottom: 20.h),
  //               ),
  //             );
  //           },
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
