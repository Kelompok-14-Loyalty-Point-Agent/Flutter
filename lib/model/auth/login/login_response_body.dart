import 'dart:convert';

class LoginResponseBody {
  String? status;
  String? message;
  String? data;

  LoginResponseBody({
    this.status,
    this.message,
    this.data,
  });

  factory LoginResponseBody.fromJson(String str) =>
      LoginResponseBody.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponseBody.fromMap(Map<String, dynamic> json) =>
      LoginResponseBody(
        status: json["status"],
        message: json["message"],
        data: json["data"],
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data,
      };
}
