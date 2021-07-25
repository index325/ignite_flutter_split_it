import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class DateUtilities {
  static String formatDateToBrLocale(DateTime date) {
    initializeDateFormatting();

    var f = DateFormat("dd/MM/yyyy");

    return f.format(date);
  }
}
