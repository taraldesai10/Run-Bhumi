import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CricketGroundController extends GetxController{
  RxBool searched = false.obs;
  TextEditingController txtSearch = TextEditingController();
  List<Map> cricketGround = [
    {
      "image": "assets/images/ground-1.jpg",
      "title": "Infinity Box Criket",
      "price": 1000,
      "location": "canal road",
      "ratting": 4.4,
      "link": "https://maps.app.goo.gl/DBPZhZdmxBogZ3ky7",

      "description":
      "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
      "boxsize": [70, 50, 30] //length,height,width
    },
    {
      "image": "assets/images/ground-2.jpg",
      "title": "Mahi Sports Club",
      "price": 800,
      "location": "Ring road",
      "ratting": 4.3,
      "link": "https://maps.app.goo.gl/DBPZhZdmxBogZ3ky7",

      "description":
      "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
      "boxsize": [70, 50, 30] //length,height,width
    },
    {
      "image": "assets/images/ground-3.jpg",
      "title": "BMR Box Cricket",
      "price": 800,
      "location": "Ring Road",
      "ratting": 4.4, "link": "https://maps.app.goo.gl/DBPZhZdmxBogZ3ky7",

      "description":
      "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
      "boxsize": [70, 50, 30] //length,height,width
    },
    {
      "image": "assets/images/ground-4.jpg!sw800",
      "title": "J.J Box Cricket",
      "price": 700,
      "location": "Mota Varachha",
      "ratting": 4.0, "link": "https://maps.app.goo.gl/DBPZhZdmxBogZ3ky7",

      "description":
      "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
      "boxsize": [70, 50, 30] //length,height,width
    },
    {
      "image": "assets/images/ground-5.avif",
      "title": "Unity Box Cricket",
      "price": 900,
      "location": "Canal Road",
      "ratting": 4.4, "link": "https://maps.app.goo.gl/DBPZhZdmxBogZ3ky7",

      "description":
      "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
      "boxsize": [70, 50, 30] //length,height,width
    },
    {
      "image": "assets/images/ground-6.webp",
      "title": "Royal Box Cricket",
      "price": 800,
      "location": "canal road",
      "ratting": 4.4, "link": "https://maps.app.goo.gl/DBPZhZdmxBogZ3ky7",

      "description":
      "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
      "boxsize": [70, 50, 30] //length,height,width
    },
  ];

}