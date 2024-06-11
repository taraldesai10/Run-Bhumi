import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:run_bhumi/moduals/box_detail/widget/favorite_button.dart';
import 'package:run_bhumi/moduals/gound_detail/widget/facilities.dart';
import 'package:run_bhumi/moduals/gound_detail/widget/rating_dialog.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';

import 'package:url_launcher/link.dart';

class GroundDetailScreen extends StatefulWidget {
  const GroundDetailScreen({
    super.key,
    this.image,
    this.boxsize,
    this.description,
    this.location,
    this.price,
    this.rating,
    this.title,
    this.link,
  });

  @override
  State<GroundDetailScreen> createState() => _GroundDetailScreenState();
  final String? image;
  final String? title;
  final String? location;
  final double? rating;
  final int? price;
  final String? description;
  final List? boxsize;
  final String? link;
}

class _GroundDetailScreenState extends State<GroundDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image.toString()),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      const Spacer(),
                      favoriteButton(() {
                        // if (isFavorite == false) {
                        //   boxFavorite.add({
                        //     "image": widget.image,
                        //     "title": widget.title,
                        //     "location": widget.location,
                        //     "rating": widget.rating,
                        //     "price": widget.price,
                        //     "description": widget.description,
                        //     "boxsize": widget.boxsize,

                        //     // "index": widget.index
                        //   });

                        //   isFavorite = true;
                        // }
                        // if (isFavorite == true) {
                        //   // boxFavorite.removeAt(1);

                        //   isFavorite = false;
                        // }
                      }),
                      const SizedBox(
                        width: 7,
                      ),
                      CircleAvatar(
                        // backgroundColor: Colors.white,

                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.title.toString(),
                          ),
                          Link(
                              uri: Uri.parse(widget.link!),
                              target: LinkTarget.defaultTarget,
                              builder: (context, followLink) => Column(
                                children: [
                                  GestureDetector(
                                    onTap: followLink,
                                    child: SvgPicture.asset(
                                      "assets/icons/03-google map.svg",
                                    ),
                                  ),
                                  const Text(
                                    "view on Map",
                                    style: TextStyle(fontSize: 8),
                                  )
                                ],
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 13,
                            color: Colors.grey,
                          ),
                          Text(
                            widget.location.toString(),
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Divider(),
                      const Text("Reviews & Rating"),
                      if (widget.rating != null)
                        Row(
                          children: [
                            RatingBar.readOnly(
                              filledIcon: Icons.star_rounded,
                              halfFilledColor: Colors.amber,
                              emptyColor: Colors.grey,
                              isHalfAllowed: true,
                              halfFilledIcon: Icons.star_half_rounded,
                              emptyIcon: Icons.star_rounded,
                              initialRating: widget.rating!,
                              maxRating: 5,
                              size: 25,
                            ),
                          ],
                        ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 10,
                              spreadRadius: -10,
                              offset: Offset(1, 5),
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: Colors.amber,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${widget.rating.toString()}/5",
                              style: const TextStyle(fontSize: 10),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Rated Great",
                              style: TextStyle(fontSize: 10),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => Dialog(
                                    child: ratingDialog(context),
                                  ),
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: AppColor.mainColor,
                                  ),
                                ),
                                child: Text(
                                  "Rate Now",
                                  style: TextStyle(
                                      fontSize: 8, color: AppColor.mainColor),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Text("Box Details"),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Box Size(in Feet)",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 20, top: 20, bottom: 20),
                                  alignment: Alignment.center,
                                  height: 90,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green[900],
                                  ),
                                  child: const Text(
                                    textAlign: TextAlign.center,
                                    "Cricket Box",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 9),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  height: 80,
                                  width: 1,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Length : ${widget.boxsize![0].toString()}",
                                          style: const TextStyle(
                                              fontSize: 8, color: Colors.grey),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Width : ${widget.boxsize![1].toString()}",
                                          style: const TextStyle(
                                              fontSize: 8, color: Colors.grey),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Height : ${widget.boxsize![2].toString()}",
                                          style: const TextStyle(
                                              fontSize: 8, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text("₹ ${widget.price.toString()}"),
                                        const Text(
                                          "/hours",
                                          style: TextStyle(
                                            fontSize: 8,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Text("Description"),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          widget.description.toString(),
                          style: const TextStyle(
                            fontSize: 9,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const Text("Facilities"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            facilities("assets/icons/glass.png", "Water"),
                            facilities(
                                "assets/icons/change_room.png", "Change Room"),
                            facilities("assets/icons/parking.png", "Parking"),
                            facilities("assets/icons/seating.png", "Seating"),
                            facilities("assets/icons/washroom.png", "Washroom")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                bottom: 15,
                left: 15,
                right: 15,
              ),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.mainColor,
              ),
              child: const Text(
                "Book Your Slot",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
