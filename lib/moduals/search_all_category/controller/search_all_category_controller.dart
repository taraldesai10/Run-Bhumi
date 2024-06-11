import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchAllCategoryController extends GetxController{
  final List<String> images = [
    "assets/images/event.jpg",
    "assets/images/event.jpg",
    "assets/images/event.jpg",
  ];
  int currentImageIndex = 0;
  TextEditingController txtSearch = TextEditingController();

}