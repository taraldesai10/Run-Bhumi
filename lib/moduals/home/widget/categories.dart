import 'package:flutter/material.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';



Widget homeCategories(
    {required String image,
      required String title,
      required Function() onTap}) =>
    Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.only(),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColor.mainColor),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 70,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        )
      ],
    );
