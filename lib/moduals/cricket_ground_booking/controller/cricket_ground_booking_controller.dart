import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:intl/intl.dart';
import 'package:run_bhumi/moduals/booking/screen/booking_screen.dart';

class CricketGroundBookingController extends GetxController{
  RxInt selectedIndex = 0.obs;
  RxInt selectedIndexTime = 0.obs;
  List<String> Name = ["Morning","Afternoon","Night","Full"];
  List<String> cricketgroundtime = [
    "Morning Time           7:00 AM To 12:00 AM",
    "Afternoon Time         1:00 PM To 6:00 PM",
    "Night Time               7:00 PM To 12:00 PM",
    "Full Day                 7:00 AM To 12:00 PM",

  ];
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

  RxString selectedMonth = DateFormat('MMMM yyyy').format(DateTime.now()).obs;

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
}