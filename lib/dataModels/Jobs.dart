// To parse this JSON data, do
//
//     final jobs = jobsFromJson(jsonString);

import 'dart:convert';

Jobs jobsFromJson(String str) => Jobs.fromJson(json.decode(str));

String jobsToJson(Jobs data) => json.encode(data.toJson());

class Jobs {
  int code;
  List<Datum> data;
  String message;

  Jobs({
    required this.code,
    required this.data,
    required this.message,
  });

  factory Jobs.fromJson(Map<String, dynamic> json) => Jobs(
        code: json["code"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message,
      };

  Map getJobs() {
    Map items = <String, String?>{};

    items = {
      "code": code,
    };

    return items;
  }
}

class Datum {
  String id;
  String type;
  String content;
  String category;
  String memberId;
  String silverId;
  DateTime requestTime;
  String requestAdrdess;

  Datum({
    required this.id,
    required this.type,
    required this.content,
    required this.category,
    required this.memberId,
    required this.silverId,
    required this.requestTime,
    required this.requestAdrdess,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        type: json["type"],
        content: json["content"],
        category: json["category"],
        memberId: json["memberId"],
        silverId: json["silverId"],
        requestTime: DateTime.parse(json["requestTime"]),
        requestAdrdess: json["requestAdrdess"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "content": content,
        "category": category,
        "memberId": memberId,
        "silverId": silverId,
        "requestTime": requestTime.toIso8601String(),
        "requestAdrdess": requestAdrdess,
      };
}
