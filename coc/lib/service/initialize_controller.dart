import 'package:coc/controller/bottom_navigation_controller.dart';
import 'package:get/get.dart';

class InitializeController {
  static Future<void> init() async {
    Get.lazyPut(() => BottomNavigationController(), fenix: true);
  }
}
