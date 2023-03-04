import 'package:coc/utils/dialog_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  late TextEditingController phoneC;

  @override
  void onInit() {
    super.onInit();
    intializeController();
  }

  void intializeController() {
    phoneC = TextEditingController();
  }

  Future handleLogin() async {
    DialogHelper.showLoader("Processing");
    if (phoneC.value.text == "" || phoneC.value.text.length != 10) {
      Get.back();
      DialogHelper.showSnackbar("Invalid Phone Number");
      return;
    }
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.verifyPhoneNumber(
      phoneNumber:"+91 ${phoneC.value.text}",
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) async {
        Get.toNamed(
          "/otp",
          arguments: [
            {
              "id": verificationId,
            },
            {
              "phone": phoneC.value.text,
            },
          ],
        );
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  void onClose() {
    super.onClose();
    disposeController();
  }

  void disposeController() {
    phoneC.dispose();
  }
}
