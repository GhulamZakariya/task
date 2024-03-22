import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:task/ps_config/ps_config.dart';
import 'app_exceptions.dart';

class Api {


  static Future<dynamic> postRequestData(String apiEndPoint, Map<String, dynamic> body,
      {bool sendToken = false,}) async {
    String apiURLAddress = PsConfig.ps_app_url + apiEndPoint;
    String apiToken = sendToken ? PsConfig.ps_bearer_token : "";
    debugPrint("URL: $apiURLAddress");
    debugPrint("Token: $apiToken");
    var responseJson;
    try {
      var response = await dio.Dio().post(apiURLAddress,
          options: dio.Options(
            headers: sendToken
                ? {
                    "Authorization": "Bearer $apiToken",
                    "Accept": "application/json",
                  }
                : {
                    "Accept": "application/json",
                  },
          ),
          data: body == {} ? null : jsonEncode(body));
      responseJson = _returnListResponse(response);
      return responseJson;
    } on dio.DioError catch (e) {

      return null;
    }
  }

}

dynamic _returnListResponse(Response<dynamic> response) {
  print("StatusCode: ${response.statusCode}");
  switch (response.statusCode) {
    case 200:
      var responseJson = response.data;
      return responseJson;
    case 201:
      var responseJson = response.data;
      return responseJson;
    case 204:
      var responseJson = "User Created";
      return responseJson;
    case 400:
      throw BadRequestException(response.data.toString());
    case 401:
      throw UnauthorisedException(response.data.toString());
    case 404:
      throw RequestNotFoundException(response.data.toString());
    case 403:
      throw UnautorizationException(response.data.toString());
    case 409:
      var responseJson = json.decode(response.data.toString());
      return responseJson;
    case 500:
      throw InternalServerException(response.data.toString());
    case 503:
      throw ServerNotFoundException(response.data.toString());
    default:
      throw FetchDataException(
          'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
  }
}
