import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/moduals/home/controller/home_screen_controller.dart';
import 'package:run_bhumi/moduals/home/widget/drawer.dart';
import 'package:run_bhumi/moduals/search_all_category/screen/search_all_category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
 final HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: drawer(),
        key: _scaffoldKey,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Image.asset(
              "assets/icons/textalign-right.png",
            ),
          ),
          title: Text(
            homeScreenController.selectedCity,
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
              decoration: BoxDecoration(
                color: mainThemeColor,
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage("assets/images/profile.png"),
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
                    const Text("Sports Categories"),
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
                              image: AssetImage(
                                  "assets/images/Rectangle 1016.png"),
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
                                image: "assets/icons/box_cricket.png",
                                title: "Box Cricket"),
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
                                image: "assets/icons/cricket_ground.png",
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
                                image: "assets/icons/cricket-net.webp",
                                title: "Nets"),
                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Text("Special Categories"),
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
                    const Text("Updates"),
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
