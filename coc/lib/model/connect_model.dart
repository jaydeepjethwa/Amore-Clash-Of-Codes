import 'dart:convert';

List<ConnectModel> connectModelFromJson(String str) => List<ConnectModel>.from(json.decode(str).map((x) => ConnectModel.fromJson(x)));

String connectModelToJson(List<ConnectModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ConnectModel {
    ConnectModel({
        required this.userId,
        required this.score,
    });

    String userId;
    double score;

    factory ConnectModel.fromJson(Map<String, dynamic> json) => ConnectModel(
        userId: json["user_id"],
        score: json["score"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "score": score,
    };
}
