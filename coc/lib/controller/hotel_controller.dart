import 'dart:convert';

import 'package:coc/model/hotel_model.dart';
import 'package:coc/service/error_controller.dart';
import 'package:coc/utils/dialog_helper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:coc/constant/constant.dart';
import 'package:coc/model/event_model.dart';
import 'package:coc/service/base_client.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class HotelController extends GetxController with ErrorController {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  String userId2 = "";

  @override
  void onInit() {
    super.onInit();
    userId2 = Get.arguments[0]["id2"];

    getAllHotels();
  }

  var hotelList = <HotelModel>[].obs;

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

  Future getAllHotels() async {
    // DialogHelper.showLoader("Loading");
    Position pos = await _determinePosition();
    String url =
        "$baseUrl/hotels/nearby?latitude=${pos.latitude}&longitude=${pos.longitude}";
    dynamic header = {
      "Content-type": "application/json",
    };
    http.Response response = await BaseClient().getRequest(url, header);

    hotelList.value = hotelModelFromJson(response.body);
  }

  Future bookHotel(HotelModel hotel) async {
    DialogHelper.showLoader("Booking");
    String userId1 = "03c50e50-babb-11ed-b6d5-95ae4d1492e7";
    String url = "$baseUrl/hotels/book";
    dynamic payload = json.encode(
      {
        "hotel_id": hotel.hotelId,
        "user_id1": userId1,
        "user_id2": userId2,
        "scheduled_on": "$selectedDate $selectedTime",
      },
    );
    dynamic header = {
      "Content-type": "application/json",
    };

    await BaseClient()
        .postRequest(url, payload, header)
        .catchError(handleError);

    Get.back();
    DialogHelper.showSnackbar("Hotel Booked Succesfully");
  }
}
