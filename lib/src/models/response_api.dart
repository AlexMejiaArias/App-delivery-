// To parse this JSON data, do
//
//     final responseApi = responseApiFromJson(jsonString);

import 'dart:convert';

import 'package:delivery_app/src/utils/my_colors.dart';

ResponseApi responseApiFromJson(String str) => ResponseApi.fromJson(json.decode(str));

String responseApiToJson(ResponseApi data) => json.encode(data.toJson());

class ResponseApi {

  String massage;
  String error;
  bool succsses;
  dynamic data;

  ResponseApi({
    this.massage,
    this.error,
    this.succsses,
  });



   ResponseApi.fromJson(Map<String, dynamic> json) {
     massage = json["massage"];
     error = json["error"];
     succsses = json["succsses"];

    try {
      data = json['data'];
    }catch (error){
      print('Exeption data $error');
    }
  }

  Map<String, dynamic> toJson() => {
    "message": massage,
    "error": error,
    "success": succsses,
  };
}
