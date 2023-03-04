import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late TextEditingController nameC, phoneC, aboutC;

  var date = "".obs;
  var gender = "None".obs;

  @override
  void onInit() {
    super.onInit();
    initializeController();
  }

  void initializeController() {
    nameC = TextEditingController();
    phoneC = TextEditingController();
    aboutC = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    disposeController();
  }

  void disposeController() {
    nameC.dispose();
    phoneC.dispose();
    aboutC.dispose();
  }
}
