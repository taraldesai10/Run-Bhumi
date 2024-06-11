import 'package:flutter/material.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';



List<String> images = ["assets/images/Mask group.png", "assets/images/img.png"];

Widget homePagePageview() => PageView.builder(
  scrollDirection: Axis.horizontal,
  itemCount: images.length,
  // ignore: avoid_unnecessary_containers
  itemBuilder: (context, index) => Container(
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          height: 190,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(
                images[index],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            images.length,
                (indexSlider) {
              return Container(
                margin: const EdgeInsets.only(right: 2),
                height: index == indexSlider ? 10 : 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:
                  index == indexSlider ? AppColor.mainColor : Colors.grey,
                ),
              );
            },
          ),
        )
      ],
    ),
  ),
);

List<Map<String, dynamic>> categories = [
  {
    "image": "assets/images/academi_.jpg",
    "title": "CRICKET ACADEMY",
    "subtitle": "50 + Academy in your area"
  },
  {
    "image": "assets/images/event.jpg",
    "title": "EVENT",
    "subtitle": "2 Major Events in Surat"
  }
];

Widget categoriesPageView() => PageView.builder(
  scrollDirection: Axis.horizontal,
  itemCount: categories.length,
  // ignore: avoid_unnecessary_containers
  itemBuilder: (context, index) => Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 5),
            height: 190,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                  categories[index]["image"],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categories[index]["title"],
                ),
                Text(
                  categories[index]["subtitle"],
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);
