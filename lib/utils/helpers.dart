import 'package:intl/intl.dart';

class Helpers {
  static String getFormattedDate(DateTime date) {
    return DateFormat('dd/MMM/yyyy').format(date);
  }

  String returnDate(DateTime date) {
    String month = DateFormat.MMM().format(date);
    String year = date.year.toString();
    String day = date.day.toString();
    return "$month $day, $year";
  }
}
