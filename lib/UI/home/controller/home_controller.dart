import 'package:get/get.dart';
import 'package:task/model/video_model.dart';
import 'package:task/networking/services/homePageServices/homePageServices.dart';

class HomeController extends GetxController {


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
    HomePageService().getHomePosts().then((response) async {
      if(response.responseData==null){

      }else{




      }

    });
  }






}