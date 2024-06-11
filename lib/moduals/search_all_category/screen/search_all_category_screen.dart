import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/moduals/search_all_category/controller/search_all_category_controller.dart';
import 'package:run_bhumi/moduals/search_all_category/widget/popular.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';
import 'package:run_bhumi/utils/constant/veriables.dart';
import 'package:run_bhumi/widget/common_search_box.dart';

class SearchAllCategoryScreen extends StatefulWidget {
  const SearchAllCategoryScreen({super.key});

  @override
  State<SearchAllCategoryScreen> createState() => _SearchAllCategoryScreenState();
}

class _SearchAllCategoryScreenState extends State<SearchAllCategoryScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      // reverseDuration: Duration(seconds: 1),
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      reverseCurve: Curves.fastLinearToSlowEaseIn,
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _startAutoSlide();
  }
CommonVariables commonVariables = Get.put(CommonVariables());
  SearchAllCategoryController searchAllCategoryController = Get.put(SearchAllCategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          commonVariables.selectedCity,
          style: const TextStyle(fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: searchBox(context, searchAllCategoryController.txtSearch),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text("Best Offer"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: FadeTransition(
                opacity: _animation,
                child: Container(
                  height: 155,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.mainColor,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          searchAllCategoryController.images[searchAllCategoryController.currentImageIndex],
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Popular",
              ),
            ),
            SizedBox(
              height: 300,
              child: popular(),
            )
          ],
        ),
      ),
    );
  }

  void _startAutoSlide() {
    Future.delayed(const Duration(seconds: 10)).then((_) {
      if (mounted) {
        setState(() {
          searchAllCategoryController.currentImageIndex = (searchAllCategoryController.currentImageIndex + 1) % searchAllCategoryController.images.length;
        });
        _startAutoSlide();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
