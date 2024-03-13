import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(),
        fenix:
            true); // Replace HomeController with the actual controller for HomePage
  }
}
