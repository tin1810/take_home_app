// To parse this JSON data, do
//
//     final bookingModel = bookingModelFromJson(jsonString);

import 'dart:convert';

List<BookingModel> bookingModelFromJson(String str) => List<BookingModel>.from(
    json.decode(str).map((x) => BookingModel.fromJson(x)));

String bookingModelToJson(List<BookingModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BookingModel {
  BookingModel({
    required this.date,
    required this.slots,
  });

  DateTime date;
  List<Slot> slots;

  factory BookingModel.fromJson(Map<String, dynamic> json) => BookingModel(
        date: DateTime.parse(json["date"]),
        slots: List<Slot>.from(json["slots"].map((x) => Slot.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "slots": List<dynamic>.from(slots.map((x) => x.toJson())),
      };
}

class Slot {
  Slot({
    required this.startTime,
    required this.endTime,
    required this.available,
  });

  String startTime;
  String endTime;
  bool available;

  factory Slot.fromJson(Map<String, dynamic> json) => Slot(
        startTime: json["start_time"],
        endTime: json["end_time"],
        available: json["available"],
      );

  Map<String, dynamic> toJson() => {
        "start_time": startTime,
        "end_time": endTime,
        "available": available,
      };
}
