import 'package:flutter/material.dart';

List homeupdates = [
  {
    "image": "assets/images/update.jpg",
    "title": "BMR BOX Cricket",
    "location": "Outer Ring Road Gadhpur Road, Surat",
    "rating": 5,
    // "price": 1000,
    // "description":
    //     "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
    // "boxsize": [80, 65, 35] //length,height,width
  },
  {
    "image": "assets/images/update2.png",
    "title": "Jal Kranti Cricket Ground",
    "location": "Hira Baug, Surat",
    "rating": 2,
    // "price": 800,
    // "description":
    //     "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
    // "boxsize": [70, 50, 30] //length,height,width
  }
];

Widget update(context) => Column(
  children: [
    ...List.generate(
      homeupdates.length,
          (index) => GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          alignment: Alignment.center,
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(homeupdates[index]["image"]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
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
                          style: const TextStyle(
                              fontSize: 10, color: Colors.grey),
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
                            style:
                            TextStyle(fontSize: 8, color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )
  ],
);
