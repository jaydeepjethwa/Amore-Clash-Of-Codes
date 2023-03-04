import 'dart:convert';

import 'package:coc/constant/constant.dart';
import 'package:coc/service/base_client.dart';
import 'package:coc/service/error_controller.dart';
import 'package:get/get.dart';

class PreferenceController2 extends GetxController with ErrorController {
  var creativity = "".obs;
  var sports = "".obs;
  var staying = "".obs;
  var goingout = "".obs;
  var travelling = "".obs;
  var music = "".obs;
  var food = "".obs;

  var type = "";


  void handleClickOnButton(String keyValue, String value) {
    switch (keyValue) {
      case "creativity":
        creativity.value += "$value,";
        break;
      case "sports":
        sports.value += "$value,";
        break;
      case "staying":
        staying.value += "$value,";
        break;
      case "goingout":
        goingout.value += "$value,";
        break;
      case "travelling":
        travelling.value += "$value,";
        break;
      case "music":
        music.value += "$value,";
        break;
      case "food":
        food.value += "$value,";
        break;
    }
  }

  Future handleSubmit() async {
    type = Get.arguments[0]["type"];
    String url = "$baseUrl/users/interests";
    String id = storage.read("id");
    dynamic payload = json.encode(
      {
        "user_id": id,
        "type": type,
        "creativity": creativity.value,
        "sports": sports.value,
        "staying_in": staying.value,
        "going_out": goingout.value,
        "travelling": travelling.value,
        "music": music.value,
        "food_drinks": food.value,
      },
    );
    dynamic header = {
      "Content-type": "application/json",
    };

    await BaseClient()
        .postRequest(url, payload, header)
        .catchError(handleError);

    Get.toNamed("/bottomNavBar");
  }
}
