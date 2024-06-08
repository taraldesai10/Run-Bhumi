import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomeCarouselSlider extends StatelessWidget {
  final int? itemCount;
  final ExtendedIndexedWidgetBuilder? itemBuilder;
  final CarouselOptions? options;
  final CarouselController? carouselController;

  const CustomeCarouselSlider(
      {Key? key,
      this.itemCount,
      this.itemBuilder,
      this.options,
      this.carouselController,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CarouselSlider.builder(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      options: options ?? CarouselOptions(scrollDirection: Axis.horizontal),
      carouselController: carouselController,
    );
  }
}
