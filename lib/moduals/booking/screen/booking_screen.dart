import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:runbhumi_cricket/screens/smit/mediaquery.dart';
import 'package:runbhumi_cricket/utils/theme.dart';

import 'booking_summary_screen.dart';

class SelectedDataModel {
  Color? colors;
  String? title;

  SelectedDataModel({this.colors, this.title});

  SelectedDataModel.fromJson(Map<String, dynamic> json) {
    colors = json['colors'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['colors'] = this.colors;
    data['title'] = this.title;
    return data;
  }
}

enum SlotStatus {
  Available,
  Selected,
  Processing,
  Booked,
}

class BookingScreen extends StatefulWidget {
  BookingScreen({super.key});

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
// Inside your _BoxBookScreenState class
  bool isSelected = false;
  int selectedIndex = 0;
  List<String> months = [
    'January 2024',
    'February 2024',
    'March 2024',
    'April 2024',
    'May 2024',
    'June 2024',
    'July 2024',
    'August 2024',
    'September 2024',
    'October 2024',
    'November 2024',
    'December 2024',
  ];

  List<SelectedDataModel> selectDataList = <SelectedDataModel>[
    SelectedDataModel(colors: Colors.green, title: "Available"),
    SelectedDataModel(colors: Colors.grey, title: "Selected"),
    SelectedDataModel(colors: Colors.orange, title: "processing"),
    SelectedDataModel(colors: Colors.red, title: "Booked"),
  ];

  String selectedMonth = DateFormat('MMMM yyyy').format(DateTime.now());

  List<String> getDatesForMonth(String month) {
    int year = int.parse(month.split(' ')[1]);
    int monthIndex = months.indexOf(month) + 1;
    int daysInMonth = DateTime(year, monthIndex + 1, 0).day;
    int currentDay = DateTime.now().day;
    int currentMonth = DateTime.now().month;
    int currentYear = DateTime.now().year;

    int startDay =
    (monthIndex == currentMonth && year == currentYear) ? currentDay : 1;

    if (startDay > daysInMonth) {
      startDay = 1;
      monthIndex += 1;
      if (monthIndex > 12) {
        monthIndex = 1;
        year += 1;
      }
    }

    List<String> dates = List<String>.generate(
      daysInMonth - startDay + 1,
          (i) => '${i + startDay} $month',
    );

    if (startDay > daysInMonth - 7) {
      int nextMonthIndex = monthIndex + 1;
      if (nextMonthIndex > 12) {
        nextMonthIndex = 1;
        year += 1;
      }
      String nextMonth = months[nextMonthIndex - 1];
      int daysInNextMonth = DateTime(year, nextMonthIndex + 1, 0).day;
      int extraDays = 7 - (daysInMonth - startDay + 1);

      dates.addAll(List<String>.generate(
        extraDays,
            (i) => '${i + 1} $nextMonth',
      ));
    }

    return dates;
  }

  Map<String, SlotStatus> slotsStatus = {};
  List<String> selectedSlots = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 24; i++) {
      slotsStatus['${i.toString().padLeft(2, '0')}:00'] = SlotStatus.Available;
    }
    slotsStatus['02:00 AM'] = SlotStatus.Booked;
    slotsStatus['12:00 PM'] = SlotStatus.Booked;
    slotsStatus['03:00 PM'] = SlotStatus.Booked;
    slotsStatus['01:00 AM'] = SlotStatus.Booked;
    slotsStatus['06:00 AM'] = SlotStatus.Booked;
    slotsStatus['09:00 AM'] = SlotStatus.Booked;
    slotsStatus['11:00 PM'] = SlotStatus.Processing;
    slotsStatus['05:00 PM'] = SlotStatus.Processing;
  }

  double calculateTotalPrice() {
    double pricePerSlot = 500.00;
    return selectedSlots.length * pricePerSlot;
  }

  void moveToNextMonth() {
    int currentIndex = months.indexOf(selectedMonth);
    if (currentIndex < months.length - 1) {
      setState(() {
        selectedMonth = months[currentIndex + 1];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Infinity Box Cricket",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black54),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10).w,
            child: const Icon(
              Icons.star_border,
              size: 35,
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          alignment: Alignment.center,
                          height: 28.h,
                          width: 145.w,
                          decoration: BoxDecoration(
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)).w,
                            border: Border.all(color: Colors.blueAccent),
                          ),
                          child: DropdownButton<String>(
                            value: selectedMonth,
                            underline: const SizedBox(),
                            items: months.map((String month) {
                              return DropdownMenuItem<String>(
                                value: month,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 3).w,
                                  child: Text(month,
                                      style: TextStyle(fontSize: 11)),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedMonth = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        // alignment: Alignment.center,
                        height: 28.h,
                        width: 27.86.w,
                        margin: const EdgeInsets.only(right: 5).r,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(6)).w,
                          border: Border.all(color: Colors.blueAccent),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: const Center(
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                              )),
                        ),
                      ),
                      Container(
                        // alignment: Alignment.center,

                        height: 28.h,
                        width: 27.86.w,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)).w,
                          border: Border.all(color: Colors.blueAccent),
                        ),
                        child: InkWell(
                            onTap: () {
                              int currentIndex = months.indexOf(selectedMonth);
                              if (currentIndex < months.length - 1) {
                                setState(() {
                                  selectedMonth = months[currentIndex + 1];
                                });
                              }
                            },
                            child: Center(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                ))),
                      ),
                      SizedBox(
                        width: 5.w,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                    // width: 5.w,
                  ),
                  //time for month
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Container(
                      height: 70.h,
                      child: ListView.builder(
                        itemExtent: 63,
                        itemCount: getDatesForMonth(selectedMonth).length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          String date = getDatesForMonth(selectedMonth)[index];
                          List<String> parts = date.split(' ');
                          int day = int.parse(parts[0]);
                          String month = parts[1];

                          DateTime currentDate = DateTime(
                            DateTime.now().year,
                            months.indexOf(selectedMonth) + 1,
                            day,
                          );

                          String currentDayName =
                          DateFormat('EEE').format(currentDate);

                          return InkWell(
                            onTap: () {
                              selectedIndex = index;
                              setState(() {});
                            },
                            child: Container(
                              width: 60.w,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent),
                                color: (selectedIndex == index)
                                    ? const Color(0xff005AA5)
                                    : Colors.white,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      currentDayName,
                                      style: TextStyle(
                                        color: (selectedIndex == index)
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Text(
                                      day.toString(),
                                      style: TextStyle(
                                        color: (selectedIndex == index)
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
                  const Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: selectDataList.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 17.w),
                              child: Container(
                                height: 18.h,
                                width: 18.w,
                                decoration: BoxDecoration(
                                    color: selectDataList[index].colors,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Text(selectDataList[index].title ?? "",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500)),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Text(
                          "Select Time:",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      alignment: WrapAlignment.start,

                      spacing: 8.0,
                      // Horizontal spacing between the children
                      runSpacing: 8.0,
                      children: List.generate(24, (index) {
                        int hour =
                        (index + 1) % 12 == 0 ? 12 : (index + 1) % 12;
                        String period = (index < 12) ? 'AM' : 'PM';
                        String time =
                            hour.toString().padLeft(2, '0') + ":00 " + period;

                        double price = 500.00;

                        SlotStatus status =
                            slotsStatus[time] ?? SlotStatus.Available;

                        Color slotColor = Colors.white;
                        Color slotText = Colors.black;
                        switch (status) {
                          case SlotStatus.Available:
                            slotColor = Colors.white;
                            slotText = const Color(0xff135B23);
                            break;
                          case SlotStatus.Selected:
                            slotColor = const Color(0xff818181);
                            slotText = const Color(0xffFFFFFF);
                            break;
                          case SlotStatus.Processing:
                            slotColor = Colors.orange;
                            slotText = const Color(0xffFFFFFF);
                            break;
                          case SlotStatus.Booked:
                            slotColor = Colors.red;
                            slotText = Colors.white;
                            break;
                          default:
                            slotColor = Colors.white;
                        }
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (status == SlotStatus.Available) {
                                slotsStatus[time] = SlotStatus.Selected;
                                selectedSlots.add(time);
                              } else if (status == SlotStatus.Selected) {
                                slotsStatus[time] = SlotStatus.Available;
                                selectedSlots.remove(time);
                              }
                            });
                          },
                          child: Container(
                            // width: (Query.of(context).size.width - 20.w) / 5 -
                            //     2.w,
                            // height:
                            //     (MediaQuery.of(context).size.height - 50.h) / 12.5 -
                            //         3.h,
                            // margin: EdgeInsets.all(4.w),
                            // width: (screenWidth - 20.w) / 5 - 2.w,
                            // height: (MediaQuery.of(context).size.height - 50.h) / 12.5 - 3.h,
                            // Adjust width to consider padding and spacing
                            decoration: BoxDecoration(
                              color: slotColor,
                              border:
                              Border.all(color: const Color(0xff135B23)),
                              borderRadius: BorderRadius.circular(8).w,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 17,
                                vertical: 6,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    time,
                                    style: TextStyle(
                                        color: slotText, fontSize: 12.sp),
                                  ),
                                  SizedBox(height: 2.h),
                                  Text(
                                    '₹${price.toStringAsFixed(2)}',
                                    style: TextStyle(
                                        color: slotText, fontSize: 10.sp),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: displayWidth(context) / 2.5,
                  decoration: BoxDecoration(
                      color: Color(0xff005AA5),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("${selectedSlots.length} Slots Selected",
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      )),
                ),
                // Expanded(child: Container()),
                SizedBox(
                  width: 2,
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(20).w,
                                      child: Text(
                                        "${selectedSlots.length} SLOTS SELECTED",
                                        style: TextStyle(fontSize: 13.sp),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(thickness: 2, color: Color(0xff818181)),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Bmx Slot",
                                            style: TextStyle(
                                                color: mainThemeColor),
                                          ),
                                          Text("26 May,2024"),
                                          Text(
                                            "09:00 AM",
                                            style: TextStyle(
                                                color: Color(0xff818181)),
                                          )
                                        ],
                                      ),
                                      Text(
                                        "₹ ${calculateTotalPrice().toStringAsFixed(2)}",
                                        style: TextStyle(
                                          color: Color(0xff818181),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                          const BookingSummaryPage(),
                                        ));
                                  },
                                  child: Container(
                                    width: 392.w,
                                    height: 48.h,
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff005AA5),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Center(
                                        child: Text("Proceed",
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF)))),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 50,
                      width: displayWidth(context) / 2.5,

                      margin: const EdgeInsets.all(10),
                      // padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color(0xff005AA5),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text("Proceed To Pay",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white))),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
