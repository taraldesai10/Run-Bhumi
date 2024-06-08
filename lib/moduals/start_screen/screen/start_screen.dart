import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/moduals/start_screen/controller/start_screen_controller.dart';
import 'package:run_bhumi/utils/constant/app_color.dart';
import 'package:run_bhumi/utils/constant/app_constant_images.dart';
import 'package:run_bhumi/widget/app_text.dart';

class StartSCreen extends StatelessWidget {
   StartSCreen({super.key});
final StartScreenController startScreenController = Get.put(StartScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // const Spacer(),
              // SizedBox(
              //   height: 100.h,width: double.infinity,
              //   child: Image.asset(fit: BoxFit.fill,
              //     AppImages.mainLogo,
              //   ),
              // ),
              // const Spacer(),
              // Padding(
              //   padding:  EdgeInsets.symmetric(vertical: 22.h),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //
              //       SvgPicture.asset(
              //         AppImages.logo,
              //         height: 45.h,
              //       ),
              //       Padding(
              //         padding:  EdgeInsets.only(left: 8.w),
              //         child: AppText(
              //           text: AppString.porterJet,
              //           textStyle: size20Regular(
              //             textColor: AppColors.whiteColor,
              //             fontWeight: FontWeight.w500,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // AppButton(
              //   text: AppString.signIn.capitalize?.toUpperCase(),
              //   textStyle: size15SemiBold(textColor: AppColors.backGroundColor,fontWeight: FontWeight.w500),
              //   onTap: () {
              //     startScreenController.logOrSign.value=false;
              //     Navigation.pushNamed(Routes.addPhoneNumberScreen);
              //   },
              // ),
              // Padding(
              //   padding:  EdgeInsets.only(top: 15.h,bottom: 25.h,),
              //   child: AppButton(
              //     text: AppString.signUp.capitalize?.toUpperCase(),
              //     isBorder: true,
              //     bColor: AppColors.trasparentColor,
              //     textStyle: size15SemiBold(textColor: AppColors.whiteColor,fontWeight: FontWeight.w500),
              //     onTap: () {
              //       startScreenController.logOrSign.value=true;
              //       Navigation.pushNamed(Routes.addPhoneNumberScreen);
              //     },
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
