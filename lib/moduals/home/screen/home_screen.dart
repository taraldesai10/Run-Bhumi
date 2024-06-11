import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:run_bhumi/moduals/box_cricket/screen/box_cricket_screen.dart';
import 'package:run_bhumi/moduals/cricket_ground/screen/screen.dart';
import 'package:run_bhumi/moduals/home/controller/home_screen_controller.dart';
import 'package:run_bhumi/moduals/home/widget/categories.dart';
import 'package:run_bhumi/moduals/home/widget/drawer.dart';
import 'package:run_bhumi/moduals/home/widget/page_view.dart';
import 'package:run_bhumi/moduals/home/widget/updates.dart';
import 'package:run_bhumi/moduals/net_screen/screen/net_screen.dart';
import 'package:run_bhumi/moduals/search_all_category/screen/search_all_category_screen.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';
import 'package:run_bhumi/utils/constant/app_constant_images.dart';
import 'package:run_bhumi/utils/constant/app_string.dart';

import 'package:run_bhumi/utils/constant/veriables.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final HomeScreenController homeScreenController =
      Get.put(HomeScreenController());
CommonVariables commonVariables = Get.put(CommonVariables());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: drawer(),

        key: homeScreenController.scaffoldKey,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              homeScreenController.scaffoldKey.currentState!.openDrawer();
            },
            child: Image.asset(
              AppImages.drawerIcon,
            ),
          ),
          title: Text(
            commonVariables.selectedCity,

            style: const TextStyle(fontSize: 12),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchAllCategoryScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.search),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                color: AppColor.mainColor,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(AppImages.profileImage),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 250,
                child: homePagePageview(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text(AppString.sportCategories),

                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(20),
                            color: Colors.grey[350],
                            image: const DecorationImage(

                              image: AssetImage(AppImages.catBackground),

                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            homeCategories(

                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const BoxCricketScreen(),
                                  ),
                                );
                              },
                              image: AppImages.boxCricketImage,
                              title: AppString.boxCricket,
                            ),

                            homeCategories(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>

                                          const CricketGround(),
                                    ),
                                  );
                                },
                                image: AppImages.cricketGround,
                                title: "Cricket Ground"),
                            homeCategories(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NetScreen(),
                                  ),
                                );
                              },
                              image: AppImages.nets,
                              title: AppString.nets,
                            ),

                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(AppString.specCategories),

                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: categoriesPageView(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text(AppString.updates),

                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: update(context),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
