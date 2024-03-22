import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/Utilities/colors/CustomColors.dart';
import 'package:task/main.dart';

class ImageIndicators extends StatelessWidget {
  const ImageIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.symmetric(vertical: 50),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        List.generate(
          onboardingController.onboardingItems.length,
              (index) => Obx(
                () => Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == onboardingController.currentIndex.value
                    ? CustomColors.selectedIndicatorColor
                    : CustomColors.unSelectedIndicatorColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
