import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coc/constant/constant.dart';
import 'package:coc/main.dart';
import 'package:coc/service/base_client.dart';
import 'package:coc/service/error_controller.dart';
import 'package:coc/utils/dialog_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController with ErrorController {
  late TextEditingController nameC, emailC, phoneC, aboutC;

  var date = "".obs;
  var gender = "None".obs;
  var idCard = "None".obs;

  late FirebaseFirestore firestore;

  @override
  void onInit() {
    super.onInit();
    initializeController();
  }

  void initializeController() {
    nameC = TextEditingController();
    phoneC = TextEditingController();
    emailC = TextEditingController();
    aboutC = TextEditingController();
    firestore = FirebaseFirestore.instance;
  }

  Future createProfile() async {
    DialogHelper.showLoader("Processing");
    String id = uuid.v1();
    Map<String, dynamic> data = {
      "id": id,
      "idCard": idCard.value == "None" ? "NO" : idCard.value,
      "name": nameC.value.text,
      "email": emailC.value.text,
      "phone": phoneC.value.text,
      "gender": gender.value,
      "about": aboutC.value.text,
    };

    await firestore.collection("user").add(data);
    await makeApiCall(id);
    storage.write("id", id);
    Get.back();
    Get.toNamed("/preference1");
  }

  Future makeApiCall(String id) async {
    String url = "$baseUrl/users/";
    dynamic payload = json.encode(
      {
        "user_id": id,
        "gender": gender.value,
      },
    );

    dynamic header = {
      "Content-type": "application/json",
    };
    await BaseClient()
        .postRequest(url, payload, header)
        .catchError(handleError);
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
    emailC.dispose();
  }
}
