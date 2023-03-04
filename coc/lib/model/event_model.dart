import 'dart:convert';

List<EventModel> eventModelFromJson(String str) =>
    List<EventModel>.from(json.decode(str).map((x) => EventModel.fromJson(x)));

class EventModel {
  EventModel({
    required this.eventId,
    required this.name,
    required this.description,
    required this.photo,
    required this.address,
    required this.scheduledOn,
    required this.capacity,
    required this.available,
    required this.distance,
  });

  int eventId;
  String name;
  String description;
  String address;
  String photo;
  DateTime scheduledOn;
  int capacity;
  int available;
  double distance;

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
        eventId: json["EventId"],
        name: json["Name"],
        description: json["Description"],
        photo: json["Photo"],
        address: json["Address"],
        scheduledOn: DateTime.parse(json["ScheduledOn"]),
        capacity: json["Capacity"],
        available: json["Available"],
        distance: json["distance"]?.toDouble(),
      );
}
