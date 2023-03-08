import 'dart:convert';

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
    bool love = storage.read("love");
    if (!love) {
      for (int i = 0; i < connectList.length; i++) {
        await getUserData(connectList[i].userId, connectList[i].score);
      }
    } else {
      await getUserData(connectList[0].userId, connectList[0].score);
    }
  }

  Future getUserData(String userId, double score) async {
    var response = await firestore.collection("user").get();
    var object =
        response.docs.where((element) => element["id"] == userId).first;
    String verified = "no";
    if (object["idCard"] != "NO") {
      verified = "yes";
    }
    dynamic temp = {
      "userId": object["id"],
      "about": object["about"],
      "name": object["name"],
      "score": score.toString(),
      "verified": verified,
    };
    userList.add(temp);
  }

  Future endDate(String id) async {
    String url = "$baseUrl/users/deactivate";
    dynamic payload = json.encode(
      {
        "user_id1": userId,
        "user_id2": id,
      },
    );
    dynamic header = {
      "Content-type": "application/json",
    };
    await BaseClient().postRequest(url, payload, header);
  }

  Future startDate(String id) async {
    String url = "$baseUrl/users/interact";
    dynamic payload = json.encode(
      {
        "user_id1": userId,
        "user_id2": id,
      },
    );
    dynamic header = {
      "Content-type": "application/json",
    };
    await BaseClient().postRequest(url, payload, header);
  }
}
