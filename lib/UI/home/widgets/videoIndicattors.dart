import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/Utilities/colors/CustomColors.dart';
import 'package:task/main.dart';

class VideoIndicators extends StatelessWidget {

  const VideoIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        List.generate(
            homeController.homePageResponseModel.value.posts!.length,
              (index) => Obx(
                () => Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == onboardingController.currentIndex.value
                    ? CustomColors.priceColor
                    : CustomColors.whiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
