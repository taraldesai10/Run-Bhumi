import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:run_bhumi/moduals/box_cricket/controller/box_cricket_controller.dart';
import 'package:run_bhumi/moduals/box_favorite/screen/box_favorite_screen.dart';
import 'package:run_bhumi/widget/common_search_box.dart';

class BoxCricketScreen extends StatefulWidget {
  const BoxCricketScreen({super.key});

  @override
  State<BoxCricketScreen> createState() => _BoxCricketScreenState();
}

class _BoxCricketScreenState extends State<BoxCricketScreen> {
  BoxCricketController boxCricketController = Get.put(BoxCricketController());

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Obx(
              () =>  boxCricketController.searched.value == false
                  ? SizedBox(
                height: 40,
                width: 300,
                child: SearchBar(
                  keyboardType: TextInputType.none,
                  leading: const Icon(
                    Icons.location_on_outlined,
                    size: 20,
                  ),
                  hintText: "search",
                  hintStyle: const WidgetStatePropertyAll(
                    TextStyle(fontSize: 12),
                  ),
                  onTap: () {
                    setState(
                          () {
                            boxCricketController. searched.value = true;
                      },
                    );
                  },
                ),
              )
                  : searchBox(context,boxCricketController.txtSearch),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: boxCricketController.boxCricket.length,
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
                          spreadRadius: -10),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              boxCricketController.boxCricket[index]["image"],
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
                              boxCricketController.boxCricket[index]["ratting"].toString(),
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )
                          ],
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
                                  boxCricket[index]["location"],
                                  style: TextStyle(
                                    color: Colors.orange[800],
                                    fontSize: 7,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              boxCricket[index]["title"],
                              style: const TextStyle(
                                fontSize: 11,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "₹${boxCricket[index]["price"].toString()}",
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BoxDetailScreen(
                                      image: boxCricket[index]["image"],
                                      title: boxCricket[index]["title"],
                                      location: boxCricket[index]["location"],
                                      rating: boxCricket[index]["ratting"],
                                      price: boxCricket[index]["price"],
                                      description: boxCricket[index]
                                      ["description"],
                                      boxsize: boxCricket[index]["boxsize"],
                                      link: boxCricket[index]["link"],
                                      // index: index,
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: mainThemeColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  "Book",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
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
