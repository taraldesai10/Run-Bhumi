// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:run_bhumi/moduals/add_phone_number_screen/controller/app_phone_number_screen_controller.dart';
// import 'package:run_bhumi/moduals/start_screen/controller/start_screen_controller.dart';
// import 'package:run_bhumi/utils/constant/app_color.dart';
// import 'package:run_bhumi/utils/constant/app_string.dart';
// import 'package:run_bhumi/widget/app_text.dart';
//
// class AddPhoneNumberScreen extends StatefulWidget {
//
//   const AddPhoneNumberScreen({super.key});
//
//   @override
//   State<AddPhoneNumberScreen> createState() => _AddPhoneNumberScreenState();
// }
//
// class _AddPhoneNumberScreenState extends State<AddPhoneNumberScreen> {
//   final AddPhoneNumberScreenController addPhoneNumberScreenController =
//       Get.put(AddPhoneNumberScreenController());
//   final StartScreenController startScreenController =Get.find();
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     addPhoneNumberScreenController.focusNode = FocusNode();
//     addPhoneNumberScreenController.focusNode?.addListener(() {
//       if (!addPhoneNumberScreenController.focusNode!.hasFocus) {
//         FocusScope.of(context)
//             .requestFocus(addPhoneNumberScreenController.focusNode);
//       }
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.backGroundColor,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//
//                   Padding(
//                     padding: EdgeInsets.only(
//                       top: 30.h,
//                       bottom: 20.h,
//                     ),
//                     child: AppText(
//                       text: AppString.enterYourPhoneNumber,
//                       textStyle: size19Medium(textColor: AppColors.whiteColor),
//                     ),
//                   ),
//                   AppText(
//                     text: AppString.wellTextYouTo,
//                     textStyle: size13Regular(
//                         textColor: AppColors.subTileTextColor,
//                         fontWeight: FontWeight.w400),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(vertical: 33.h),
//                     child: Obx(
//                       () => Container(
//                         decoration: BoxDecoration(
//                             color: AppColors.textFieldFiledColor,
//                             borderRadius: BorderRadius.circular(12.r),
//                             border: Border.all(
//                                 color:
//                                     addPhoneNumberScreenController.isFocus.value
//                                         ? AppColors.buttonBorderColor
//                                         : AppColors.trasparentColor)),
//                         child: Padding(
//                           padding: EdgeInsets.only(
//                               top: addPhoneNumberScreenController.isFocus.value
//                                   ? 10.h
//                                   : 8.h,
//                               bottom:
//                                   addPhoneNumberScreenController.isFocus.value
//                                       ? 0.h
//                                       : 3.h,
//                               right: 16.w,
//                               left: 16.w),
//                           // EdgeInsets.symmetric(
//                           //     vertical: 10.h, horizontal: 16.w),
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                   right: 8.w,
//                                   bottom: addPhoneNumberScreenController
//                                           .isFocus.value
//                                       ? 6.h
//                                       : 3.h,
//                                   top: addPhoneNumberScreenController
//                                           .isFocus.value
//                                       ? 0.h
//                                       : 2.h,
//                                 ),
//                                 child: InkWell(
//                                   onTap: () {
//                                     bottomSheet(context);
//                                   },
//                                   child: Center(
//                                     child: Row(
//                                       children: [
//                                         Obx(() => AppText(
//                                             text: addPhoneNumberScreenController
//                                                 .countryCode
//                                                 .toString())),
//                                         const Icon(
//                                           Icons.keyboard_arrow_down_sharp,
//                                           color: AppColors.subTileTextColor,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: AppTextField(autoFocus:
//                                 addPhoneNumberScreenController
//                                     .isFocus.value,
//                                   keyboardType: TextInputType.phone,
//                                   cursorHeight: 18.h,
//                                   contentPadding: EdgeInsets.only(
//                                       top: addPhoneNumberScreenController
//                                               .isFocus.value
//                                           ? 17.h
//                                           : 15,
//                                       bottom: addPhoneNumberScreenController
//                                               .isFocus.value
//                                           ? 0.h
//                                           : 0.h),
//                                   cursorColor: AppColors.whiteColor,
//                                   controller: addPhoneNumberScreenController
//                                       .phoneNumberController,
//                                   lableText:AppString.enterPhoneNumber,
//
//                                   labelStyle: size15SemiBold(
//                                     textColor: AppColors.subTileTextColor,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                   onTap: () {
//                                     addPhoneNumberScreenController
//                                         .isFocus.value = true;
//                                   },
//                                   onTapOutside: (event) {
//                                     addPhoneNumberScreenController
//                                         .isFocus.value = false;
//                                   },
//                                 ).paddingOnly(
//                                     top: addPhoneNumberScreenController
//                                             .isFocus.value
//                                         ? 5.h
//                                         : 5.h,
//                                     bottom: addPhoneNumberScreenController
//                                             .isFocus.value
//                                         ? 0.h
//                                         : 0.h),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsets.only(bottom: 10.h),
//                 child: AppButton(
//                   text: AppString.contiNue.toUpperCase(),
//                   textStyle: size15SemiBold(
//                       textColor: AppColors.backGroundColor,
//                       fontWeight: FontWeight.w500),
//                   onTap: () {
//                    if( startScreenController.logOrSign.value==true) {
//
//                      Navigation.pushNamed(Routes.personalDetailsScreen);
//                    }else{
//                     Navigation.pushNamed(Routes.otpVerificationScreen);}
//                   },
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   bottomSheet(BuildContext context) {
//     return appBottomSheet(
//       context: context,
//       child: Container(
//         height: MediaQuery.of(context).size.height / 2,
//         decoration: BoxDecoration(color: AppColors.bottomsheetColor,
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(12.r),
//             topLeft: Radius.circular(12.r),
//           ),
//         ),
//         child: Padding(
//           padding: EdgeInsets.symmetric(
//             vertical: 20.h,
//             horizontal: 16.w,
//           ),
//           child: ListView.builder(
//             itemCount: addPhoneNumberScreenController.countryCodeList.length,
//             itemBuilder: (context, index) {
//               return GestureDetector(
//                 // behavior: HitTestBehavior.opaque,
//                 onTap: () {
//                   addPhoneNumberScreenController.countryCode.value =
//                       addPhoneNumberScreenController.countryCodeList[index]
//                           .toString()
//                           .split(" ")
//                           .first;
//                   Navigation.pop();
//                   // qualificationDataController.languageList[index].value?.value = !(qualificationDataController.languageList[index].value?.value ?? true);
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: AppText(
//                     text:
//                         addPhoneNumberScreenController.countryCodeList[index] ??
//                             "",
//                     textStyle: size15SemiBold(
//                         textColor: AppColors.whiteColor,
//                         fontWeight: FontWeight.w400),
//                   ).paddingOnly(bottom: 20.h),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
