import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:run_bhumi/moduals/select_city/controller/select_cities_controller.dart';

class SelectCityScreen extends StatefulWidget {
  const SelectCityScreen({super.key});

  @override
  State<SelectCityScreen> createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Select City",
          style: TextStyle(fontSize: 15),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.search,
              ))
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Center(
              child: Text(
                "All Cities",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cities.length,
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCity = cities[index].toString();
                          });
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const BottomNav(),
                          //     ));
                        },
                        child: Text(
                          cities[index],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey[300],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
