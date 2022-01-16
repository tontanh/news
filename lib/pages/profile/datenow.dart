import 'package:intl/intl.dart';

class Datenow {
  Datenow();
  dateyear() {
    DateTime now = new DateTime.now();
    String createdtime = DateFormat('yyyy-MM-dd').format(now);
    return createdtime;
  }
}
