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

  // creativity
  var art = false.obs,
      design = false.obs,
      makeup = false.obs,
      photography = false.obs,
      writing = false.obs,
      craft = false.obs;

  // Sports
  var yoga = false.obs,
      running = false.obs,
      gym = false.obs,
      football = false.obs,
      cricket = false.obs,
      badminton = false.obs;

  // staying in
  var video = false.obs,
      gardning = false.obs,
      cooking = false.obs,
      board = false.obs,
      banking = false.obs,
      takeout = false.obs;

  // Going out
  var giga = false.obs,
      theatre = false.obs,
      nightClub = false.obs,
      bars = false.obs,
      karoke = false.obs,
      festivals = false.obs;

  // travelling
  var beaches = false.obs,
      spa = false.obs,
      roadTrips = false.obs,
      fishing = false.obs,
      camping = false.obs,
      hiking = false.obs;

  // music
  var hipHop = false.obs,
      rock = false.obs,
      country = false.obs,
      classical = false.obs,
      desi = false.obs,
      jazz = false.obs;

  // food
  var wine = false.obs,
      bear = false.obs,
      cofee = false.obs,
      tea = false.obs,
      veg = false.obs,
      nonVeg = false.obs;

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
