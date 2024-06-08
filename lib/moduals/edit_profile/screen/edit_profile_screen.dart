import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/moduals/edit_personal_information/controller/edit_detail_screen_controller.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final PersonalDetailEditController personalDetailEditController =
      Get.put(PersonalDetailEditController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // BookingAppBar(title:AppString.personalDetails, isNavigation:true,changeType: false),
            // Padding(
            //   padding:  EdgeInsets.symmetric(vertical: 12.h,horizontal: 18.w),
            //   child: Column(
            //     children: [
            //       Container(
            //         decoration: BoxDecoration(
            //             border: Border(
            //
            //                 bottom: BorderSide(
            //                     width: .5.w, color: AppColors.bottomsheetColor))),
            //         child:Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               AppText(
            //                 text:AppString.name,
            //                 textStyle: size10Medium(
            //                     textColor: AppColors.subTileTextColor,
            //                     fontWeight: FontWeight.w400),
            //               ).paddingOnly(top: 12.h),Obx(() =>
            //                   AppText(
            //                     text: "${personalDetailEditController.firstNameText.value} ${personalDetailEditController.lastNameText.value}",
            //                     textStyle: size14SemiBold(
            //                         textColor: AppColors.whiteColor,
            //                         fontWeight: FontWeight.w400),
            //                   ).paddingOnly(top: 5.h,bottom: 12.h),)
            //             ],
            //           ),
            //           const Spacer(),
            //           GestureDetector(onTap:(){
            //             Navigation.pushNamed(Routes.profileDetailEditScreen);
            //           },
            //             child: AppText(
            //               text: AppString.edit,
            //               textStyle: size12Medium(
            //                   textColor: AppColors.whiteColor, fontWeight: FontWeight.w500),
            //             ),
            //           ),
            //         ],),
            //       ),
            //       Container(
            //         decoration: BoxDecoration(
            //             border: Border(
            //
            //                 bottom: BorderSide(
            //                     width: .5.w, color: AppColors.bottomsheetColor))),
            //         child:Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               AppText(
            //                 text: AppString.phone,
            //                 textStyle: size10Medium(
            //                     textColor: AppColors.subTileTextColor,
            //                     fontWeight: FontWeight.w400),
            //               ).paddingOnly(top: 12.h),Obx(() =>
            //                   AppText(
            //                     text: personalDetailEditController.numberText.value,
            //                     textStyle: size14SemiBold(
            //                         textColor: AppColors.whiteColor,
            //                         fontWeight: FontWeight.w400),
            //                   ).paddingOnly(top: 5.h,bottom: 12.h),)
            //             ],
            //           ),
            //           const Spacer(),
            //           GestureDetector(onTap:(){
            //             Navigation.pushNamed(Routes.profileDetailEditScreen);
            //           },
            //             child: AppText(
            //
            //               text: AppString.edit,
            //               textStyle: size12Medium(
            //                   textColor: AppColors.whiteColor, fontWeight: FontWeight.w500),
            //             ),
            //           ),
            //         ],),
            //       ),
            //       Container(
            //         decoration: BoxDecoration(
            //             border: Border(
            //
            //                 bottom: BorderSide(
            //                     width: .5.w, color: AppColors.bottomsheetColor))),
            //         child:Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               AppText(
            //                 text:AppString.email ,
            //                 textStyle: size10Medium(
            //                     textColor: AppColors.subTileTextColor,
            //                     fontWeight: FontWeight.w400),
            //               ).paddingOnly(top: 12.h),Obx(() =>
            //                   AppText(
            //                     text: personalDetailEditController.emailText.value ,
            //                     textStyle: size14SemiBold(
            //                         textColor: AppColors.whiteColor,
            //                         fontWeight: FontWeight.w400),
            //                   ).paddingOnly(top: 5.h,bottom: 12.h),)
            //             ],
            //           ),
            //           const Spacer(),
            //           GestureDetector(onTap:(){
            //             Navigation.pushNamed(Routes.profileDetailEditScreen);
            //           },
            //             child: AppText(
            //               text:AppString.edit,
            //               textStyle: size12Medium(
            //                   textColor: AppColors.whiteColor, fontWeight: FontWeight.w500),
            //             ),
            //           ),
            //         ],),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
// Widget  editBox(String t, String n){
//
//
//  return   Container(
//       decoration: BoxDecoration(
//           border: Border(
//
//               bottom: BorderSide(
//                   width: .5.w, color: AppColors.bottomsheetColor))),
//       child:Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             AppText(
//               text: t,
//               textStyle: size10Medium(
//                   textColor: AppColors.subTileTextColor,
//                   fontWeight: FontWeight.w400),
//             ).paddingOnly(top: 12.h),
//             AppText(
//               text: n,
//               textStyle: size14SemiBold(
//                   textColor: AppColors.whiteColor,
//                   fontWeight: FontWeight.w400),
//             ).paddingOnly(top: 5.h,bottom: 12.h),
//           ],
//         ),
//         const Spacer(),
//         GestureDetector(onTap:(){
//           Navigation.pushNamed(Routes.profileDetailEditScreen);
//         },
//           child: AppText(
//             text: AppString.edit,
//             textStyle: size12Medium(
//                 textColor: AppColors.whiteColor, fontWeight: FontWeight.w500),
//           ),
//         ),
//       ],),
//     );
//   }
}
