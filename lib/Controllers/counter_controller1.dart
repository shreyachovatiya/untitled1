import 'package:get/get.dart';
import 'package:untitled1/Controllers/counter_controller.dart';

class CounterController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update();
  }
}
