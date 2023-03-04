import 'package:coc/utils/dialog_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OtpController extends GetxController {
  late TextEditingController otpC1, otpC2, otpC3, otpC4, otpC5, otpC6;

  @override
  void onInit() {
    super.onInit();
    initializeController();
  }

  void initializeController() {
    otpC1 = TextEditingController();
    otpC2 = TextEditingController();
    otpC3 = TextEditingController();
    otpC4 = TextEditingController();
    otpC5 = TextEditingController();
    otpC6 = TextEditingController();
  }

  Future sendOtp() async {
    DialogHelper.showLoader("Processing");
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      String smsCode =
          "${otpC1.value.text}${otpC2.value.text}${otpC3.value.text}${otpC4.value.text}${otpC5.value.text}${otpC6.value.text}";
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: Get.arguments[0]["id"], smsCode: smsCode);
      await auth.signInWithCredential(credential);
      Get.toNamed("/bottomNavBar");
    } catch (e) {
      Get.back();
      DialogHelper.showSnackbar("Incorrect OTP");
    }
  }

  @override
  void onClose() {
    super.onClose();
    disposeController();
  }

  void disposeController() {
    otpC1.dispose();
    otpC2.dispose();
    otpC3.dispose();
    otpC4.dispose();
    otpC5.dispose();
    otpC6.dispose();
  }
}
