import 'package:flutter/material.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // BookingAppBar(title:AppString.profile, isNavigation:false,changeType: false),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       InkWell(
            //         onTap: () {
            //           Navigation.pushNamed(Routes.editProfileScreen);
            //         },
            //         child: Container(
            //           decoration: BoxDecoration(
            //               color: AppColors.textFieldFiledColor,
            //               borderRadius: BorderRadius.circular(10.r)),
            //           child: Padding(
            //             padding: EdgeInsets.symmetric(
            //                 horizontal: 16.w, vertical: 20.h),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Padding(
            //                       padding: EdgeInsets.only(bottom: 10.h),
            //                       child: AppText(
            //                         text: "User name",
            //                         textStyle: size19Medium(
            //                             textColor: AppColors.whiteColor),
            //                       ),
            //                     ),
            //                     AppText(
            //                       text: "+91 1234567890",
            //                       textStyle: size13Regular(
            //                         textColor: AppColors.subTileTextColor,
            //                         fontWeight: FontWeight.w400,
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //                 Column(
            //                   children: [
            //                     AppText(
            //                       text: AppString.edit,
            //                       textStyle: size13Regular(
            //                         textColor: AppColors.whiteColor,
            //                         fontWeight: FontWeight.w400,
            //                       ),
            //                     )
            //                   ],
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.symmetric(vertical: 6.h),
            //         child: Divider(
            //           color: AppColors.bottomsheetColor,
            //         ),
            //       ),
            //       InkWell(onTap: () {
            //         Navigation.replaceAll(Routes.startSCreen);
            //       },child: options( AppString.signOut)),
            //
            //       Padding(
            //         padding: EdgeInsets.symmetric(vertical: 6.h),
            //         child: Divider(
            //           color: AppColors.bottomsheetColor,
            //         ),
            //       ),
            //
            //       options( AppString.privacyPolicy),    Padding(
            //         padding: EdgeInsets.symmetric(vertical: 6.h),
            //         child: Divider(
            //           color: AppColors.bottomsheetColor,
            //         ),
            //       ),
            //       options( AppString.termsAndCondition),
            //       Padding(
            //         padding: EdgeInsets.symmetric(vertical: 6.h),
            //         child: Divider(
            //           color: AppColors.bottomsheetColor,
            //         ),
            //       ),
            //       Center(
            //         child: Padding(
            //           padding: EdgeInsets.symmetric(vertical: 40.h),
            //           child: AppText(text: AppString.deleteAccount,
            //             textStyle: size14SemiBold(
            //                 textColor: AppColor.grey,
            //                 fontWeight: FontWeight.w300),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  // Widget options(String s) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       AppText(
  //         text: s,
  //         textStyle: size17Medium(
  //             textColor: AppColors.whiteColor, fontWeight: FontWeight.w500),
  //       ),
  //       Icon(
  //         Icons.arrow_forward_ios,
  //         color: AppColors.subTileTextColor,
  //         size: 20.h,
  //       ),
  //     ],
  //   );
  // }
}
