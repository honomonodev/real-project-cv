import '../routes/app_routes.dart';
import 'package:get/get.dart';

class StartController extends GetxController {
  // Add your business logic here
  // For example, you might want to navigate to the home page after the animation finishes
  void navigateToHome() {
    Get.offNamed(AppRoutes.HOME);
  }
}
