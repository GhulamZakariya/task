import 'package:flutter/material.dart';
import 'package:task/main.dart';
import 'package:task/model/video_model.dart';
import 'package:task/networking/Api/api.dart';
import 'package:task/networking/Api/api_response.dart';
import 'package:task/networking/Api/app_exceptions.dart';
import 'package:task/ps_config/ps_config.dart';

class HomePageService {

  Future<ApiResponse<dynamic>> getHomePosts() async {
    try {
      var response = await Api.postRequestData(PsConfig.home_posts_test, {});
      debugPrint("getHomePosts: $response");
      HomePageResponseModel responseModel = HomePageResponseModel.fromJson(response);
      debugPrint("HomePageResponseModel: $responseModel");
      homeController.setHomePageResponseModel = responseModel;
      return ApiResponse.completed(responseModel);
    } on BadRequestException {
      return ApiResponse.error('Bad Request Exception');
    } on UnauthorisedException {
      return ApiResponse.error('The User is Un-authorized');
    } on RequestNotFoundException {
      return ApiResponse.error('Request Not Found');
    } on UnautorizationException {
      return ApiResponse.error('The User is Un-authorized');
    } on InternalServerException {
      return ApiResponse.error('Internal Server Error');
    } on ServerNotFoundException {
      return ApiResponse.error('Server Not Available');
    } on FetchDataException {
      return ApiResponse.error('An Error occurred while Fetching the Data');
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }





}