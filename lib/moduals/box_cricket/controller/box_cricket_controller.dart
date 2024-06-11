import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BoxCricketController extends GetxController{
  RxBool searched = false.obs;
  TextEditingController txtSearch = TextEditingController();
  List<Map> boxCricket = [
    {
      "image": "assets/images/box1.JPG",
      "title": "Infinity Box Criket",
      "price": 1000,
      "location": "canal road",
      "ratting": 4.5,
      "link": "https://maps.app.goo.gl/DBPZhZdmxBogZ3ky7",

      "description":
      "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
      "boxsize": [70, 50, 30] //length,height,width
    },
    {
      "image": "assets/images/box2.JPG",
      "title": "Mahi Sports Club",
      "price": 800,
      "location": "Ring road",
      "ratting": 4.3,
      "link": "https://maps.app.goo.gl/aTaZtTSVqnznoh8R9",

      "description":
      "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
      "boxsize": [80, 65, 35] //length,height,width
    },
    {
      "image": "assets/images/box3.jpg",
      "title": "BMR Box Cricket",
      "price": 800,
      "location": "Ring Road",
      "link": "https://maps.app.goo.gl/aTaZtTSVqnznoh8R9",

      "ratting": 4.4,
      "description":
      "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
      "boxsize": [80, 65, 35] //length,height,width
    },
    {
      "image": "assets/images/box4.webp",
      "title": "J.J Box Cricket",
      "price": 700,
      "location": "Mota Varachha",
      "link": "https://maps.app.goo.gl/aTaZtTSVqnznoh8R9",

      "ratting": 4.0,
      "description":
      "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
      "boxsize": [80, 65, 35] //length,height,width
    },
    {
      "image": "assets/images/box5.webp",
      "title": "Unity Box Cricket",
      "price": 900,
      "location": "Canal Road",
      "link": "https://maps.app.goo.gl/aTaZtTSVqnznoh8R9",

      "ratting": 4.4,
      "description":
      "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
      "boxsize": [80, 65, 35] //length,height,width
    },
    {
      "image": "assets/images/box6.webp",
      "title": "Royal Box Cricket",
      "price": 800,
      "location": "canal road",
      "link": "https://maps.app.goo.gl/aTaZtTSVqnznoh8R9",

      "ratting": 2.4,
      "description":
      "Elevate your game and book your slots seamlessly on the app with your team,ensuring a thrilling and competitive gaming experience. Join us at BMR Box Cricket,Where passion meets precision an every match is an opportunity to shine.",
      "boxsize": [80, 65, 35] //length,height,width
    },
  ];

}