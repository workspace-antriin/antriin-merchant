// To parse this JSON data, do
//
//     final merchantSignupModel = merchantSignupModelFromJson(jsonString);

import 'dart:convert';

MerchantSignupModel merchantSignupModelFromJson(String str) =>
    MerchantSignupModel.fromJson(json.decode(str));

String merchantSignupModelToJson(MerchantSignupModel data) =>
    json.encode(data.toJson());

class MerchantSignupModel {
  MerchantSignupModel({
    this.success,
    this.message,
  });

  bool success;
  String message;

  factory MerchantSignupModel.fromJson(Map<String, dynamic> json) =>
      MerchantSignupModel(
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
      };
}
