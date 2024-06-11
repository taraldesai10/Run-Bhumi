import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:run_bhumi/moduals/box_detail/screen/box_detail_screen.dart';
import 'package:run_bhumi/utils/constant/app_constant_colors.dart';
import 'package:run_bhumi/utils/constant/app_string.dart';
import 'package:run_bhumi/utils/constant/veriables.dart';

class BoxFavoriteScreen extends StatefulWidget {
  const BoxFavoriteScreen({super.key});

  @override
  State<BoxFavoriteScreen> createState() => _BoxFavoriteScreenState();
}

class _BoxFavoriteScreenState extends State<BoxFavoriteScreen> {
  CommonVariables commonVariables = Get.put(CommonVariables());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Box Cricket",
          style: TextStyle(fontSize: 17),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BoxFavoriteScreen(),
                ),
              );
            },
            icon: const Icon(Icons.star_border),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: commonVariables.boxFavorite.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 9),
                        blurRadius: 10,
                        spreadRadius: -10,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BoxDetailScreen(
                                image: commonVariables.boxFavorite[index]["image"],
                                title:commonVariables. boxFavorite[index]["title"],
                                location: commonVariables.boxFavorite[index]["location"],
                                rating: commonVariables.boxFavorite[index]["ratting"],
                                price: commonVariables.boxFavorite[index]["price"],
                                description: commonVariables.boxFavorite[index]["description"],
                                boxsize:commonVariables.boxFavorite[index]["boxsize"],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.only(top: 10, right: 10),
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                commonVariables.boxFavorite[index]["image"],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 18,
                              ),
                              Text(
                                commonVariables.boxFavorite[index]["rating"].toString(),
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.orange[800],
                                  size: 13,
                                ),
                                Text(
                                  commonVariables.boxFavorite[index]["location"],
                                  style: TextStyle(
                                    color: Colors.orange[800],
                                    fontSize: 7,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              commonVariables.boxFavorite[index]["title"],
                              style: const TextStyle(
                                fontSize: 11,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "₹${commonVariables.boxFavorite[index]["price"].toString()}",
                                  style: const TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                                const Text(
                                  "/hours",
                                  style: TextStyle(
                                    fontSize: 8,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 35,
                              decoration: BoxDecoration(
                                color: AppColor.mainColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                AppString.book,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
