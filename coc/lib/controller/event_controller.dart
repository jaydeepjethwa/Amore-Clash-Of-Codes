import 'dart:convert';

import 'package:coc/service/error_controller.dart';
import 'package:coc/utils/dialog_helper.dart';
import 'package:http/http.dart' as http;
import 'package:coc/constant/constant.dart';
import 'package:coc/model/event_model.dart';
import 'package:coc/service/base_client.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class EventController extends GetxController with ErrorController {
  @override
  void onInit() {
    super.onInit();
    getAllvents();
  }

  var eventList = <EventModel>[].obs;
  var isReserved = false.obs;

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }

  Future getAllvents() async {
    // DialogHelper.showLoader("Loading");
    Position pos = await _determinePosition();
    String url =
        "$baseUrl/events/nearby?latitude=${pos.latitude}&longitude=${pos.longitude}";
    dynamic header = {
      "Content-type": "application/json",
    };
    http.Response response = await BaseClient().getRequest(url, header);

    eventList.value = eventModelFromJson(response.body);
    // Get.back();
  }

  Future bookEvent(EventModel event) async {
    DialogHelper.showLoader("Booking");
    String userId = storage.read("id");
    String url = "$baseUrl/events/book";
    dynamic payload = json.encode(
      {
        "event_id": event.eventId.toString(),
        "user_id": userId,
      },
    );
    dynamic header = {
      "Content-type": "application/json",
    };

    await BaseClient()
        .postRequest(url, payload, header)
        .catchError(handleError);

    Get.back();
    Get.back();
    DialogHelper.showSnackbar("Event Booked Succesfully");
  }

  void checkReservedStatus(EventModel event) async {
    String userId = storage.read("id");
    int eventId = event.eventId;
    String url = "$baseUrl/events/verify";
    dynamic header = {
      "Content-type": "application/json",
    };
    dynamic payload = json.encode(
      {
        "event_id": eventId.toString(),
        "user_id": userId,
      },
    );
    http.Response response =
        await BaseClient().postRequest(url, payload, header);
    var jsonesponse = json.decode(response.body);
    if (jsonesponse["success"] == "no") {
      isReserved.value = false;
    } else {
      isReserved.value = true;
    }
  }
}
