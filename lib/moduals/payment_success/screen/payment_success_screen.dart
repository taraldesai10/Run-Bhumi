import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatefulWidget {
  const PaymentSuccessScreen({super.key});

  @override
  _PaymentSuccessScreenState createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
  bool _detailsVisible = false;

  void _toggleDetails() {
    setState(() {
      _detailsVisible = !_detailsVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  height: 150,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image(
                            image:
                            AssetImage("assets/images/Icon Background.png"),
                          ),
                          Positioned(
                            left: 12,
                            top: 9,
                            child: Image(
                              image:
                              AssetImage("assets/images/tick-circle.png"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Payment Success!"),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "INR 2900",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Payment Details"),
                        trailing: IconButton(
                          icon: Icon(_detailsVisible
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down),
                          onPressed: _toggleDetails,
                        ),
                      ),
                      if (_detailsVisible)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Ref Number",
                                      style:
                                      TextStyle(color: Color(0xff707070))),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Text("000085752257"),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("Payment Status",
                                      style:
                                      TextStyle(color: Color(0xff707070))),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Image(
                                    image: AssetImage(
                                        "assets/images/tick-circle.png"),
                                    height: 20,
                                  ),
                                  Text("Success")
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("Payment Time",
                                      style:
                                      TextStyle(color: Color(0xff707070))),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text("25-02-2023, 13:22:16")
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text("Total Payment",
                                      style:
                                      TextStyle(color: Color(0xff707070))),
                                  SizedBox(
                                    width: 115,
                                  ),
                                  Text("IDR 2900")
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            SizedBox(
              child: Center(
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color(0xff005AA5),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                      child: Text("Done",
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
