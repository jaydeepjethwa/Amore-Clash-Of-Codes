import 'dart:convert';

import 'package:coc/constant/constant.dart';
import 'package:coc/model/event_model.dart';
import 'package:coc/service/base_client.dart';
import 'package:coc/utils/dialog_helper.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:get/state_manager.dart';

class BookingHistoryController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getAllvents();
  }

  var eventList = <EventModel>[].obs;

  Future getAllvents() async {
    String userId = storage.read("id");
    String url = "$baseUrl/events/$userId";
    dynamic header = {
      "Content-type": "application/json",
    };
    http.Response response = await BaseClient().getRequest(url, header);

    eventList.value = eventModelFromJson(response.body);
  }

  String scannedQrCode = "";
  Future checkQr(int index) async {
    try {
      scannedQrCode = await FlutterBarcodeScanner.scanBarcode(
          '#fff666', 'Cancle', true, ScanMode.QR);
    } on PlatformException {}
    if (scannedQrCode != eventList[index].eventId.toString()) {
      DialogHelper.showSnackbar("Please Select correct Event");
      return;
    }
    String userId = storage.read("id");
    int eventId = eventList[index].eventId;
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
      DialogHelper.showSnackbar("You haven't register for the event");
      return;
    } else {
      storage.write("liveEvent", eventId);
      Get.offAndToNamed("/eventConnectMeet");
    }
  }
}
