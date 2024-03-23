import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/model/video_model.dart';
import 'package:task/networking/services/homePageServices/homePageServices.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  RxBool imageShow = false.obs;


  var selectedIndex = 0.obs;
  Rx<HomePageResponseModel> homePageResponseModel = HomePageResponseModel().obs;


  void updateIndex(int index) {
    selectedIndex.value = index;
  }


  set setHomePageResponseModel(HomePageResponseModel data) {
    homePageResponseModel.value = data;
    update();
  }



  void getData(){
    HomePageService().getHomePosts().then((response) async {});
  }

  void setCurrentVideoIndex(int index) {
    debugPrint('Current Video Index: $index');
    // Add logic here to play the video at the given index
  }

  void setCurrentImageIndex(int index) {
    debugPrint('Current Image Index: $index');
    // Add logic here to show the image at the given index
  }

}