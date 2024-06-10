import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:run_bhumi/moduals/booking/screen/booking_screen.dart';
import 'package:run_bhumi/moduals/booking_summary/screen/booking_summary_screen.dart';
import 'package:run_bhumi/moduals/cricket_ground_booking/controller/cricket_ground_booking_controller.dart';




class CricketGroundScreen extends StatefulWidget {
  CricketGroundScreen({required Key key}) : super(key: key);

  @override
  _BoxBookScreenState createState() => _BoxBookScreenState();
}

class _BoxBookScreenState extends State<CricketGroundScreen> {
  final CricketGroundBookingController cricketGroundBookingController = Get.put(CricketGroundBookingController());

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 24; i++) {
      cricketGroundBookingController.slotsStatus['${i.toString().padLeft(2, '0')}:00'] = SlotStatus.Available;
    }
    cricketGroundBookingController.slotsStatus['02:00 AM'] = SlotStatus.Booked;
    cricketGroundBookingController.slotsStatus['12:00 PM'] = SlotStatus.Booked;
    cricketGroundBookingController.slotsStatus['03:00 PM'] = SlotStatus.Booked;
    cricketGroundBookingController.slotsStatus['01:00 AM'] = SlotStatus.Booked;
    cricketGroundBookingController.slotsStatus['06:00 AM'] = SlotStatus.Booked;
    cricketGroundBookingController.slotsStatus['09:00 AM'] = SlotStatus.Booked;
    cricketGroundBookingController.slotsStatus['11:00 PM'] = SlotStatus.Processing;
    cricketGroundBookingController.slotsStatus['05:00 PM'] = SlotStatus.Processing;
  }

  double calculateTotalPrice() {
    double pricePerSlot = 500.00;
    return cricketGroundBookingController.selectedSlots.length * pricePerSlot;
  }

  void moveToNextMonth() {
    int currentIndex = cricketGroundBookingController.months.indexOf(cricketGroundBookingController.selectedMonth.value);
    if (currentIndex < cricketGroundBookingController.months.length - 1) {
        cricketGroundBookingController.selectedMonth.value = cricketGroundBookingController.months[currentIndex + 1];
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cricket Ground",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black54),
        actions: [
          Icon(
            Icons.star_border,
            size: 35,
          ),
          SizedBox(
            width: 26,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 215,
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.blueAccent),
                        ),
                        child: DropdownButton<String>(
                          value: cricketGroundBookingController.selectedMonth.value,
                          underline: SizedBox(),
                          items: cricketGroundBookingController.months.map((String month) {
                            return DropdownMenuItem<String>(
                              value: month,
                              child: Text(month),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                              cricketGroundBookingController.selectedMonth.value = newValue!;

                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 130),
                    Container(
                      height: 45,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.blueAccent),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          int currentIndex = cricketGroundBookingController.months.indexOf(cricketGroundBookingController.selectedMonth.value);
                          if (currentIndex > 0) {
                            cricketGroundBookingController.selectedMonth.value = cricketGroundBookingController.months[currentIndex - 1];
                          }
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 45,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.blueAccent),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {
                          int currentIndex = cricketGroundBookingController.months.indexOf(cricketGroundBookingController.selectedMonth.value);
                          if (currentIndex < cricketGroundBookingController.months.length - 1) {
                            setState(() {
                              cricketGroundBookingController.selectedMonth.value = cricketGroundBookingController.months[currentIndex + 1];
                            });
                          }
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 100,
                    child: ListView.builder(
                      itemExtent: 63,
                      itemCount: cricketGroundBookingController.getDatesForMonth(cricketGroundBookingController.selectedMonth.value).length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        String date = cricketGroundBookingController.getDatesForMonth(cricketGroundBookingController.selectedMonth.value)[index];
                        List<String> parts = date.split(' ');
                        int day = int.parse(parts[0]);
                        String month = parts[1];

                        DateTime currentDate = DateTime(
                          DateTime.now().year,
                          cricketGroundBookingController.months.indexOf(cricketGroundBookingController.selectedMonth.value) + 1,
                          day,
                        );

                        String currentDayName =
                        DateFormat('EEE').format(currentDate);

                        return InkWell(
                          onTap: () {
                            cricketGroundBookingController.selectedIndex.value = index;
                          },
                          child: Container(
                            width: 60,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent),
                              color: (cricketGroundBookingController.selectedIndex.value == index)
                                  ? Color(0xff005AA5)
                                  : Colors.white,
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    currentDayName,
                                    style: TextStyle(
                                      color: (cricketGroundBookingController.selectedIndex.value == index)
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    day.toString(),
                                    style: TextStyle(
                                      color: (cricketGroundBookingController.selectedIndex.value == index)
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 2,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                    ),
                    SizedBox(width: 2),
                    Text("Available",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500)),
                    SizedBox(width: 10),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    SizedBox(width: 2),
                    Text("Selected",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500)),
                    SizedBox(width: 10),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    SizedBox(width: 2),
                    Text("Processing",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500)),
                    SizedBox(width: 10),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    SizedBox(width: 2),
                    Text("Booked",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cricketGroundBookingController.cricketgroundtime.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 20, right: 20),
                  child: InkWell(
                    onTap: () {
                      cricketGroundBookingController.selectedIndexTime.value = index;
                    },
                    child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          color: (cricketGroundBookingController.selectedIndexTime.value == index) ? Color(0xff818181) : Colors.white,
                          borderRadius: BorderRadius.circular(5),border: Border.all(color: Color(0xff135B23))),
                      child: Row(
                        children: [
                          SizedBox(width: 5,),
                          Text(cricketGroundBookingController.cricketgroundtime[index],style: TextStyle(fontSize: 16,color: (cricketGroundBookingController.selectedIndexTime.value == index) ? Colors.white : Color(0xff135B23))),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 170,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff005AA5),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: Center(
                  child: Text(
                    "Night Slots Selected",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        height: 320,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Text(
                                      "${cricketGroundBookingController.selectedSlots.length} SLOTS SELECTED"),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 2,
                              color: Colors.black38,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 10),
                                      child: Text(
                                        "BMX Slot",
                                        style: TextStyle(
                                            color: Color(0xff0055AA),
                                            fontSize: 16),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "26 May,2024",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(width: 205),
                                    Text(
                                      "₹ ${calculateTotalPrice().toStringAsFixed(2)}",
                                      style: TextStyle(color: Colors.black38),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "09:00 AM",
                                    style: TextStyle(color: Colors.black38),
                                  ),
                                ),
                                SizedBox(height: 80),
                                Center(
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BookingSummaryPage(),
                                              ));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xff005AA5),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              )),
                                          width: 350,
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              "Proceed",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: 170,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff005AA5),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Center(
                    child: Text(
                      "Proceed To Pay",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
