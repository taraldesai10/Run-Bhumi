import 'package:flutter/material.dart';
import 'package:runbhumi_cricket/common/search_box.dart';
import 'package:runbhumi_cricket/model/all_gound.dart';
import 'package:runbhumi_cricket/screens/ground_detail_screen.dart';
import 'package:runbhumi_cricket/utils/theme.dart';

class CricketGround extends StatefulWidget {
  const CricketGround({super.key});

  @override
  State<CricketGround> createState() => _CricketGroundState();
}

class _CricketGroundState extends State<CricketGround> {
  bool searched = false;
  TextEditingController txtSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Cricket Ground",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.star_border),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: searched == false
                ? SizedBox(
              height: 40,
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
                      searched = true;
                    },
                  );
                },
              ),
            )
                : searchBox(context, txtSearch),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: cricketGround.length,
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
                              cricketGround[index]["image"],
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
                              cricketGround[index]["ratting"].toString(),
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
                                  cricketGround[index]["location"],
                                  style: TextStyle(
                                    color: Colors.orange[800],
                                    fontSize: 7,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              cricketGround[index]["title"],
                              style: const TextStyle(
                                fontSize: 11,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "₹${cricketGround[index]["price"].toString()}",
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
                                      builder: (context) => GroundDetailScreen(
                                        image: cricketGround[index]["image"],
                                        title: cricketGround[index]["title"],
                                        location: cricketGround[index]
                                        ["location"],
                                        rating: cricketGround[index]["ratting"],
                                        price: cricketGround[index]["price"],
                                        description: cricketGround[index]
                                        ["description"],
                                        boxsize: cricketGround[index]
                                        ["boxsize"],
                                        link: cricketGround[index]["link"],
                                        // index: index,
                                      ),
                                    ));
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
