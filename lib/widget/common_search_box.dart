import 'package:flutter/material.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';

Widget searchBox(context, TextEditingController controller) => Container(
  alignment: Alignment.center,
  margin: const EdgeInsets.only(bottom: 12),
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  height: 240,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    border: Border.all(color: AppColor.mainColor),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 40,
        child: SearchBar(
          controller: controller,
          trailing: const [
            Icon(Icons.search),
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          "Dates",
          style: TextStyle(fontSize: 10),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          dateButton(
            onTap: () {},
            title: "Today",
            width: 50,
          ),
          dateButton(
            onTap: () {},
            title: "Tomorrow",
            width: 50,
          ),
          GestureDetector(
            onTap: () async {
              final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(
                    2000,
                  ),
                  lastDate: DateTime(2050));
            },
            child: Container(
              alignment: Alignment.center,
              height: 30,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: AppColor.mainColor,
                ),
              ),
              child: const Text(
                "🗓 Select date",
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
          )
        ],
      ),
      const Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          "Time Sloat",
          style: TextStyle(
            fontSize: 10,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: 20,
              width: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: AppColor.mainColor,
                ),
              ),
              child: const Text(
                "⏱ 07:00",
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
          ),
          const Text(
            "To",
            style: TextStyle(fontSize: 10),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: AppColor.mainColor,
                ),
              ),
              child: const Text(
                "⏱ 07:00",
                style: TextStyle(
                  fontSize: 9,
                ),
              ),
            ),
          )
        ],
      ),
      const Spacer(),
      Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColor.mainColor,
        ),
        child: const Text(
          "Search Box",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      )
    ],
  ),
);

Widget dateButton(
    {required double width,
      required String title,
      required Function onTap}) =>
    GestureDetector(
      onTap: onTap(),
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: AppColor.mainColor,
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 9,
          ),
        ),
      ),
    );
