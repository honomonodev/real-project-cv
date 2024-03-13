import 'package:e_vesping/app/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:e_vesping/app/controllers/start_controller.dart';
// Import StartPage

class StartBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartController>(() => StartController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
  }
}
