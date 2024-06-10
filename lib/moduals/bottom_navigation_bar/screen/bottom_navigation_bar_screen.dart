import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int currentindex = 0;
  List screens = const [
    HomeScreen(),
    MyBookingScreen(),
    StoreScareen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        elevation: 100,
        showUnselectedLabels: true,
        backgroundColor: mainThemeColor,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_bar_logo/home.png"),
            backgroundColor: mainThemeColor,
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_bar_logo/booking.png"),
            label: "My Booking",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_bar_logo/store.png"),
            label: "Store",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_bar_logo/profile.png"),
            label: "Profile",
          )
        ],
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}
