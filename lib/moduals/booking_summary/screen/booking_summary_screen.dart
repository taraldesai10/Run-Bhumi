import 'package:flutter/material.dart';
import 'package:run_bhumi/utils/constant/app_string.dart';
import 'package:run_bhumi/widget/app_text.dart';
import 'package:run_bhumi/widget/common_textstyle.dart';

class BookingSummaryPage extends StatefulWidget {
  const BookingSummaryPage({super.key});

  @override
  State<BookingSummaryPage> createState() => _BookingSummaryPageState();
}

class _BookingSummaryPageState extends State<BookingSummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: AppText(text: AppString.bookingSummary,
            textStyle: size20Regular(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 3,
                  ),
                  Material(
                    elevation: 10,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff005AA5), width: 1),
                        color: Color(0xff005AA5).withOpacity(0.2),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Max. 12 Players are allowed."),
                            Text("Equipment Will Be Provided."),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                    elevation: 20,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      width: 350,
                      height: 278,
                      decoration: BoxDecoration(
                          border:
                          Border.all(color: Color(0xff005AA5), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "3 SLOTS SELECTED",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 70,
                                ),
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                      border:
                                      Border.all(color: Color(0xff005AA5))),
                                  child: Center(
                                      child: Text("Select All",
                                          style: TextStyle(
                                              color: Color(0xff818181)))),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "BMX Slot",
                                      style:
                                      TextStyle(color: Color(0xff0055AA)),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text("27 May,2024"),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Text("₹ 900.00",
                                        style: TextStyle(
                                            color: Color(0xff818181))),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff005AA5)),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(1))),
                                      child: Center(
                                          child: Icon(
                                            Icons.close,
                                            size: 15,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text("09:00",
                                        style: TextStyle(
                                            color: Color(0xff818181))),
                                  ],
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "BMX Slot",
                                      style:
                                      TextStyle(color: Color(0xff0055AA)),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text("27 May,2024"),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Text("₹ 1200.00",
                                        style: TextStyle(
                                            color: Color(0xff818181))),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff005AA5)),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(1))),
                                      child: Center(
                                          child: Icon(
                                            Icons.close,
                                            size: 15,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text("09:00",
                                        style: TextStyle(
                                            color: Color(0xff818181))),
                                  ],
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "BMX Slot",
                                      style:
                                      TextStyle(color: Color(0xff0055AA)),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text("27 May,2024"),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Text("₹ 800.00",
                                        style: TextStyle(
                                            color: Color(0xff818181))),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff005AA5)),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(1))),
                                      child: Center(
                                          child: Icon(
                                            Icons.close,
                                            size: 15,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text("09:00",
                                        style: TextStyle(
                                            color: Color(0xff818181))),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    elevation: 10,
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Color(0xff005AA5))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("Booking User",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff0055AA))),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 130, top: 20),
                                  child: Text("Change",
                                      style: TextStyle(
                                        color: Color(0xff818181),
                                      )),
                                ),
                              ],
                            ),
                            Text("Manav Patel", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Material(
                    elevation: 10,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      height: 40,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Color(0xff005AA5))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                children: [
                                  Text("Apply Coupon",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 18)),
                                  SizedBox(
                                    width: 160,
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      color: Color(0xff2A2A2A)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Material(
                    elevation: 10,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      height: 113,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Color(0xff005AA5))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment Summary",
                                style: TextStyle(
                                    color: Color(0xff0055AA), fontSize: 20)),
                            Row(
                              children: [
                                Text("Sub Total",
                                    style: TextStyle(color: Color(0xff818181))),
                                SizedBox(
                                  width: 175,
                                ),
                                Text("₹ 2900.00",
                                    style: TextStyle(
                                      color: Color(0xff818181),
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Text("GST",
                                    style: TextStyle(color: Color(0xff818181))),
                                SizedBox(
                                  width: 210,
                                ),
                                Text("₹ 0.00",
                                    style: TextStyle(
                                      color: Color(0xff818181),
                                    )),
                              ],
                            ),
                            Divider(
                              endIndent: 10,
                            ),
                            Row(
                              children: [
                                Text("GRAND TOTAL"),
                                SizedBox(
                                  width: 140,
                                ),
                                Text(
                                  "₹ 2900.00",
                                  style: TextStyle(color: Color(0xff818181)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "View Cancellation Policy",
                    style: TextStyle(fontSize: 15, color: Color(0xff005AA5)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentInformationScreen(),
                          ));
                    },
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xff005AA5),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                          child: Text("Proceed",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF), fontSize: 18))),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
