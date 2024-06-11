import 'package:flutter/material.dart';

bool isFavorite = false;

Widget favoriteButton(Function onTap) {
  return CircleAvatar(
    // backgroundColor: Colors.white,
    child: IconButton(
      onPressed: onTap(),
      icon: isFavorite == false
          ? const Icon(
        Icons.star_border,
        color: Colors.black,
      )
          : const Icon(
        Icons.star,
        color: Colors.yellow,
      ),
    ),
  );
}
