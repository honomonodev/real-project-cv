import 'package:e_vesping/app/routes/app_routes.dart';
import 'package:e_vesping/app/views/home_page.dart';
import 'package:get/get.dart';

import '../bindings/start_binding.dart';
import '../bindings/home_binding.dart'; // Import HomeBinding
import '../views/start_page.dart';

class AppPages {
  static const INITIAL = AppRoutes.START;

  static final routes = [
    GetPage(
      name: AppRoutes.START,
      page: () => StartPage(),
      binding: StartBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(), // Use HomeBinding for HomePage
    ),
  ];
}
