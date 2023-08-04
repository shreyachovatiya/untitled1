import 'dart:ui';

import 'package:get/get.dart';

class MyController extends GetxController {
  void changeLanguage(var parameter1, var parameter2) {
    var local = Locale(parameter1, parameter2);
    Get.updateLocale(local);
  }
}
