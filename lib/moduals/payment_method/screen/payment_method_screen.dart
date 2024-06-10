import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  PaymentMethodScreen({super.key});

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  List<String> images = [
    "assets/images/Paypal.png",
    "assets/images/Visa.png",
    "assets/images/Mastercard.png",
    "assets/images/Diners.png",
    "assets/images/Amex.png",
  ];

  int selectedIndex = -1;
  String selectedMonth = '01';
  String? selectedYear;

  final List<String> months = [
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
    '09',
    '10',
    '11',
    '12'
  ];

  final List<String> years = List<String>.generate(10, (index) {
    int year = DateTime.now().year + index;
    return year.toString();
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Payment Methods",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20),
              child: Text(
                "Enter Your Payment details",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 10),
                  child: Text("By continuing you agree to our",
                      style:
                      TextStyle(fontStyle: FontStyle.italic, fontSize: 15)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Terms",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Color(0xff6979F8),
                      fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Column(
              children: [
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        ListView.builder(
                          clipBehavior: Clip.none,
                          itemCount: images.length,
                          itemBuilder: (context, index) {
                            bool isSelected = selectedIndex == index;
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Padding(
                                padding:
                                const EdgeInsets.only(left: 1, right: 10),
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 300),
                                  height: isSelected ? 100 : 50,
                                  width: isSelected ? 80 : 60,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child:
                                  Image(image: AssetImage(images[index])),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: 340,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 10),
                      child: Text("Cardholder Name",
                          style: TextStyle(
                              color: Color(0xff000000), fontSize: 18)),
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                          hintText: "John Henry",
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(),
                          fillColor: Color(0xff005AA5),
                          filled: true),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text("Card Number",
                          style: TextStyle(
                              color: Color(0xff000000), fontSize: 18)),
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Color(0xff005AA5),
                          hintText: "**** **** **** 3947",
                          hintStyle: TextStyle(color: Colors.white),
                          filled: true),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("Exp Month",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 18)),
                              ),
                              DropdownButtonFormField<String>(
                                dropdownColor: Color(0xff005AA5),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    fillColor: Color(0xff005AA5),
                                    filled: true),
                                value: selectedMonth,
                                style: TextStyle(color: Colors.white),
                                items: months.map((String month) {
                                  return DropdownMenuItem<String>(
                                    value: month,
                                    child: Container(
                                      color: Color(0xff005AA5),
                                      child: Text(
                                        month,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedMonth = newValue!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("Exp Year",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 18)),
                              ),
                              DropdownButtonFormField<String>(
                                dropdownColor: Color(0xff005AA5),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    fillColor: Color(0xff005AA5),
                                    filled: true),
                                value: selectedYear,
                                style: TextStyle(color: Colors.white),
                                items: years.map((String year) {
                                  return DropdownMenuItem<String>(
                                    value: year,
                                    child: Container(
                                      color: Color(0xff005AA5),
                                      child: Text(
                                        year,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedYear = newValue!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text("CVV",
                          style: TextStyle(
                              color: Color(0xff000000), fontSize: 18)),
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Color(0xff005AA5),
                          filled: true),
                      keyboardType: TextInputType.number,
                      obscureText: true,
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 60,
                      width: 370,
                      decoration: BoxDecoration(
                          color: Color(0xff005AA5),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Center(
                          child: Text(
                            "Add Now",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
