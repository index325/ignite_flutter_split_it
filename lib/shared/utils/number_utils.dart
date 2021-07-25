import 'package:intl/intl.dart';

class NumberUtils {
  static String formatCurrency(dynamic numberString) {
    var f = NumberFormat("##0.00", "pt_Br");

    return f.format(numberString);
  }
}
