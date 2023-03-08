import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coc/constant/constant.dart';
import 'package:coc/model/connect_model.dart';
import 'package:coc/service/base_client.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

class ConnectionController extends GetxController {
  var connectList = <ConnectModel>[];
  var userList = <dynamic>[].obs;
  late FirebaseFirestore firestore;
  String userId = "";

  @override
  void onInit() {
    super.onInit();
    firestore = FirebaseFirestore.instance;
    userId = storage.read("id");
    getAllConnects();
  }

  Future getAllConnects() async {
    String url = "$baseUrl/users/$userId/matches";
    dynamic header = {
      "Content-type": "application/json",
    };
    http.Response response = await BaseClient().getRequest(url, header);
    connectList = connectModelFromJson(response.body);
    for (int i = 0; i < connectList.length; i++) {
      await getUserData(connectList[i].userId, connectList[i].score);
    }
  }

  Future getUserData(String userId, double score) async {
    var response = await firestore.collection("user").get();
    var object =
        response.docs.where((element) => element["id"] == userId).first;
    dynamic temp = {
      "userId": object["id"],
      "about": object["about"],
      "name": object["name"],
      "score": score.toString(),
    };
    userList.add(temp);
  }
}
