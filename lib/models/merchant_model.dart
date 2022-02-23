// To parse this JSON data, do
//
//     final merchantModel = merchantModelFromJson(jsonString);

import 'dart:convert';

MerchantModel merchantModelFromJson(String str) =>
    MerchantModel.fromJson(json.decode(str));

String merchantModelToJson(MerchantModel data) => json.encode(data.toJson());

class MerchantModel {
  MerchantModel({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory MerchantModel.fromJson(Map<String, dynamic> json) => MerchantModel(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.token,
    this.username,
    this.email,
    this.userId,
  });

  String token;
  String username;
  String email;
  int userId;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
        username: json["username"],
        email: json["email"],
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "username": username,
        "email": email,
        "user_id": userId,
      };
}
