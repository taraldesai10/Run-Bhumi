// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:runbhumi_cricket/screens/smit/payment_method_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

class PaymentInformationScreen extends StatefulWidget {
  const PaymentInformationScreen({super.key});

  @override
  State<PaymentInformationScreen> createState() =>
      _PaymentInformationScreenState();
}

class _PaymentInformationScreenState extends State<PaymentInformationScreen> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    _launchBhim();
    _launchPhonePe();
    _launchGooglePay();
  }

  void _launchGooglePay() async {
    // Replace with actual recipient's UPI ID and transaction details
    const vpa = 'recipient-vpa@bank'; // Replace with recipient's UPI ID
    const name = 'Recipient Name'; // Replace with recipient's name
    const amount = '10'; // Replace with the amount to be paid
    const currency = 'INR'; // Replace with the currency code
    const tn = 'Test Transaction'; // Replace with transaction note

    // Construct the Google Pay payment URL
    final url =
        'gpay://upi/pay?pa=$vpa&pn=$name&tn=${Uri.encodeComponent(tn)}&am=$amount&cu=$currency';

    // Launch the Google Pay app with the constructed URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Pay';
    }
  }

  void _launchPhonePe() async {
    // Replace with actual recipient's UPI ID and transaction details
    const vpa = '9879679537@ybl'; // Replace with recipient's UPI ID
    const name = 'Recipient Name'; // Replace with recipient's name
    const amount = '50'; // Replace with the amount to be paid
    const currency = 'INR'; // Replace with the currency code
    const tn = 'Payment for Box Booking'; // Replace with transaction note

    // Generate a unique transaction ID
    var uuid = Uuid();
    String transactionId = uuid.v4();

    // Construct the PhonePe payment URL
    final url =
        'phonepe://pay?pa=$vpa&pn=$name&tid=$transactionId&tn=${Uri.encodeComponent(tn)}&am=$amount&cu=$currency';

    // Launch the PhonePe app with the constructed URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch PhonePe';
    }
  }

  void _launchBhim() async {
    // Replace with actual recipient's UPI ID and transaction details
    const vpa = 'recipient-vpa@bank'; // Replace with recipient's UPI ID
    const name = 'Recipient Name'; // Replace with recipient's name
    const amount = '10'; // Replace with the amount to be paid
    const currency = 'INR'; // Replace with the currency code
    const tn = 'Test Transaction'; // Replace with transaction note

    // Construct the BHIM payment URL
    final url =
        'upi://pay?pa=$vpa&pn=$name&tn=${Uri.encodeComponent(tn)}&am=$amount&cu=$currency';

    // Launch the BHIM app with the constructed URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch BHIM';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              "Payment Information",
              style: TextStyle(fontSize: 20, color: Color(0xff242424)),
            )),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Divider(
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Amount",
                    style: TextStyle(fontSize: 18, color: Color(0xff818181))),
                Text("₹2900.00",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("GST (0%)",
                    style: TextStyle(fontSize: 18, color: Color(0xff818181))),
                Text("₹0",
                    style: TextStyle(fontSize: 18, color: Color(0xff818181)))
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payable Amount",
                    style: TextStyle(
                        color: Color(0xff005AA5),
                        fontSize: 18,
                        fontWeight: FontWeight.w700)),
                Text("₹2900.00",
                    style: TextStyle(
                        color: Color(0xff005AA5),
                        fontSize: 18,
                        fontWeight: FontWeight.w700)),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 105,
              width: 350,
              decoration: BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 350,
                    height: 50,
                    color: Color(0xffDCF6E2),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("100% extra on selected slot of ₹ 50",
                          style: TextStyle(
                              color: Color(0xff008E1F),
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 350,
                    height: 35,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("assets/images/Vector@2x.png"),
                          width: 20,
                        ),
                        SizedBox(
                          width: 5,
                          height: 25,
                        ),
                        Text(
                          "₹50 Cashback in Wallet  with thisslot selected",
                          style: TextStyle(color: Color(0xff008E1F)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 3),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Pay directly with your favourite UPI apps",
                    style: TextStyle(
                        color: Color(0xff005AA5), fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        InkWell(
                            onTap: () => _launchGooglePay(),
                            child: Image(
                                image:
                                AssetImage("assets/images/Group 49.png"))),
                        Text("GPay",
                            style: TextStyle(
                                color: Color(0xff38210F),
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                            onTap: () => _launchPhonePe(),
                            child: Image(
                                image:
                                AssetImage("assets/images/Phone pe.png"))),
                        Text("PhonePe",
                            style: TextStyle(
                                color: Color(0xff38210F),
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                            onTap: () => _launchBhim(),
                            child: Image(
                                image: AssetImage("assets/images/Bhmi.png"))),
                        Text("BHIM",
                            style: TextStyle(
                                color: Color(0xff38210F),
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              indent: 15,
              endIndent: 15,
              thickness: 2,
              color: Color(0xff818181),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      width: double.infinity,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text("Other Payments Methods",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PaymentMethodScreen(),
                                        ));
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(left: 30),
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/images/paymentmethod1.png")),
                                          )),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Credit / Debit Card",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff38210F),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PaymentMethodScreen(),
                                        ));
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(left: 30),
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/images/paymentmethod2.png")),
                                          )),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Net Banking",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff38210F),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 65,
                decoration: BoxDecoration(
                    color: Color(0xff005AA5),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: ListTile(
                  leading: Image(
                      image: AssetImage("assets/images/Bhmi@2x.png"),
                      width: 45),
                  title: Text("Pay with other UPI apps",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w500)),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Color(0xffFFECE2), size: 30),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 10,
              color: Color(0xff818181),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
