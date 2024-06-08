import 'package:intl/intl.dart';

class Utils {
  static String getFormattedDate(
      {required DateTime? dateTime, required String formate}) {
    if (dateTime != null) {
      return DateFormat(formate).format(dateTime);
    } else {
      return "";
    }
  }
}
