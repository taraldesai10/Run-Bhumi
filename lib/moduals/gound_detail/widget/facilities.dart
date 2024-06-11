import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget facilities(String icon, String title) => Column(
  children: [
    Image.asset(icon),
    Text(
      title,
      style: const TextStyle(
        fontSize: 8,
      ),
    )
  ],
);
