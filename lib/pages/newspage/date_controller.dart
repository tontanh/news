import 'package:exam/pages/profile/datenow.dart';
import 'package:get/get.dart';

class Datecontroller extends GetxController {
  String? dateTime;
  String endTime = Datenow().dateyear();
  @override
  void getdatetime() {
    String? date = dateTime;
    String end = endTime;
    update();
  }
}
