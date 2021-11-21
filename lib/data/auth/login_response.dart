// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    this.id,
    this.fullName,
    this.accessToken,
    this.userType,
  });

  int id;
  String fullName;
  String accessToken;
  int userType;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    id: json["id"],
    fullName: json["fullName"],
    accessToken: json["accessToken"],
    userType: json["userType"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "fullName": fullName,
    "accessToken": accessToken,
    "userType": userType,
  };
}
