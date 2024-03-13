import 'package:get/get.dart';

class HomeController extends GetxController {
  // Define your variables and methods here

  // This is an example of a variable
  var count = 0.obs;

  // This is an example of a method
  void incrementCount() {
    count.value++;
  }
}
