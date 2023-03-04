import 'package:coc/constant/constant.dart';
import 'package:coc/model/event_model.dart';
import 'package:coc/service/base_client.dart';
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
}
