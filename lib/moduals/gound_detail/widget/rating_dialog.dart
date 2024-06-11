import 'dart:developer';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';

bool rated = false;

Widget ratingDialog(context) => Container(
      alignment: Alignment.center,
      height: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Rating"),
          const SizedBox(
            height: 10,
          ),
          RatingBar(
            alignment: Alignment.center,
            onRatingChanged: (value) {
              log(
                value.toString(),
              );
              log(rated.toString());
            },
            filledIcon: Icons.star_rounded,
            halfFilledColor: Colors.amber,
            emptyColor: Colors.grey,
            isHalfAllowed: true,
            halfFilledIcon: Icons.star_half_rounded,
            emptyIcon: Icons.star_rounded,
            initialRating: 0,
            maxRating: 5,
            size: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              height: 100,
              child: TextFormField(
                style: const TextStyle(fontSize: 10),
                decoration: InputDecoration(
                  hintText: "enter your feedback here",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.mainColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.mainColor),
                  ),
                ),
                maxLines: 5,
                maxLength: 50,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    border: Border.all(
                      color: AppColor.mainColor,
                    ),
                  ),
                  child: Text(
                    "cancel",
                    style: TextStyle(fontSize: 10, color: AppColor.mainColor),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    border: Border.all(
                      color: AppColor.mainColor,
                    ),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColor.mainColor,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
