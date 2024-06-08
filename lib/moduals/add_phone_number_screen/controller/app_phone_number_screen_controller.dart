import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPhoneNumberScreenController extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // FindAirportService.findAirportApi(queryData: {
    //   "text":"new",
    //   "useSstr": "1",
    // });1
  }
  TextEditingController phoneNumberController = TextEditingController();
  FocusNode? focusNode;
  RxBool isFocus = false.obs;
  RxString countryCode = "+91".obs;
  RxList countryCodeList = <String>["+91 India","+1 USA","+99 Bali","+80 Thailand","+300 Pakistan"].obs;
  // Rx<FindAirPortModel>? findAirPortModel;


  // Future<void> workDetail() async {
  //   try {
  //
  //    findAirPortModel.value = await F.partTwo(bodyData: {
  //       "educationDetail": educationList?.map((element) => element.toJson()).toList(),
  //       "job_detail": jobDetail?.map((element) => element.toJson()).toList(),
  //       "certifications": certification?.map((element) => element.toJson()).toList(),
  //       "languages": selectLanguage
  //     });
  //     await profileController.setUserData();
  //
  //   } catch (e, st) {
  //     print("workDetail exception ---> $e $st");
  //   }finally{
  //     isLoading.value = false;
  //
  //   }
  // }
}