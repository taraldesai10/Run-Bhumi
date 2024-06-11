import 'package:flutter/material.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';



List homeupdates = [
  {
    "image": "assets/images/update.jpg",
    "title": "BMR BOX Cricket",
    "location": "Outer Ring Road Gadhpur Road, Surat",
    "rating": 5
  },
  {
    "image": "assets/images/update2.png",
    "title": "Jal Kranti Cricket Ground",
    "location": "Hira Baug, Surat",
    "rating": 2
  }
];

Widget popular() => PageView.builder(
  itemCount: homeupdates.length,
  scrollDirection: Axis.horizontal,
  itemBuilder: (context, index) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(homeupdates[index]["image"]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          // alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 20, top: 5),
          width: double.infinity,
          height: 85,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(homeupdates[index]["title"]),
              Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 5),
                child: Text(
                  homeupdates[index]["location"],
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ratting
                  ...List.generate(
                    homeupdates[index]["rating"],
                        (index) => SizedBox(
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                        size: 19,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  // rating counter
                  const Text(
                    "180+ rating",
                    style: TextStyle(fontSize: 8, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            homeupdates.length,
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
