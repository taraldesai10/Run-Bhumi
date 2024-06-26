import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/moduals/bottom_navigation_bar/screen/bottom_navigation_bar_screen.dart';
import 'package:run_bhumi/moduals/select_city/controller/select_city_controller.dart';

import 'package:run_bhumi/utils/common_functions.dart';

import 'package:run_bhumi/utils/constant/app_string.dart';
import 'package:run_bhumi/utils/constant/veriables.dart';

class SelectCityScreen extends StatefulWidget {
  const SelectCityScreen({super.key});

  @override
  State<SelectCityScreen> createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {

  CommonVariables commonVariables = Get.put(CommonVariables());

  SelectCityController selectCityController = Get.put(SelectCityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        centerTitle: true,
        title: const Text(
         AppString.selectCity,
          style: TextStyle(fontSize: 15),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.search,
              ))
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Center(
              child: Text(
                AppString.allCities,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: selectCityController.cities.length,
              itemBuilder: (context, index) => Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {

                            commonVariables.selectedCity = selectCityController.cities[index].toString();

                          });
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BottomNav(),
                              ));
                        },
                        child: Text(
                          selectCityController.cities[index],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey[300],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
