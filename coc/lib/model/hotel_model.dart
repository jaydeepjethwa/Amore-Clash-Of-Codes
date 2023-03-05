// To parse this JSON data, do
//
//     final hotelModel = hotelModelFromJson(jsonString);

import 'dart:convert';

List<HotelModel> hotelModelFromJson(String str) => List<HotelModel>.from(json.decode(str).map((x) => HotelModel.fromJson(x)));

String hotelModelToJson(List<HotelModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HotelModel {
    HotelModel({
        required this.hotelId,
        required this.name,
        required this.description,
        required this.photo,
        required this.distance,
        required this.address,
    });

    int hotelId;
    String name;
    String description;
    String photo;
    double distance;
    String address;

    factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(
        hotelId: json["HotelId"],
        name: json["Name"],
        description: json["Description"],
        photo: json["Photo"],
        distance: json["distance"],
        address: json["Address"],
    );

    Map<String, dynamic> toJson() => {
        "HotelId": hotelId,
        "Name": name,
        "Description": description,
        "Photo": photo,
        "distance": distance,
        "Address": address,
    };
}
