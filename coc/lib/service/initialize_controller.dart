import 'package:coc/controller/bottom_navigation_controller.dart';
import 'package:coc/controller/chat_controller.dart';
import 'package:coc/controller/login_controller.dart';
import 'package:coc/controller/otp_controller.dart';
import 'package:coc/controller/register_controller.dart';
import 'package:get/get.dart';

class InitializeController {
  static Future<void> init() async {
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => OtpController(), fenix: true);
    Get.lazyPut(() => BottomNavigationController(), fenix: true);
    Get.lazyPut(() => RegisterController(), fenix: true);
    Get.lazyPut(() => ChatController(), fenix: true);
  }
}
