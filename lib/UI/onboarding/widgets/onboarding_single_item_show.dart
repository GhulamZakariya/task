import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/UI/home/home_screen_ui.dart';
import 'package:task/UI/onboarding/widgets/apple_shape.dart';
import 'package:task/UI/onboarding/widgets/onboarding_items.dart';
import 'package:task/UI/onboarding/widgets/onboarding_screen_image_indicators.dart';
import 'package:task/Utilities/colors/CustomColors.dart';
import 'package:task/common/common_button.dart';
import 'package:task/main.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingItem item;

  const OnboardingPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //AppleShape(),

          Image.network(
            item.image,
            height: 300,
          ),
          const SizedBox(height: 100),
          Container(
            width: MediaQuery.of(context).size.width,
            color: CustomColors.primaryColor,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  item.title,
                  style:  TextStyle(fontSize: 32, fontWeight: FontWeight.w700,color: CustomColors.whiteColor),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    item.description,
                    textAlign: TextAlign.center,
                    style:  TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: CustomColors.whiteColor),
                  ),
                ),
                const ImageIndicators(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CommonButton(
                          onPressed: () {
                            Get.offAll(const HomeScreenUi());
                          },
                          minimumSize: const Size(184,55),
                          title: 'Skip', btnColor: CustomColors.whiteColor,
                          textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: CustomColors.secondaryColor),

                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: CommonButton(
                          onPressed: () {
                            if (onboardingController.currentIndex.value <
                                onboardingController.onboardingItems.length - 1) {
                              onboardingController.next();
                            } else {
                              Get.offAll(const HomeScreenUi()); // Navigate to home screen
                            }
                          },
                          minimumSize: const Size(184,55),
                          title: 'Next', btnColor: CustomColors.whiteColor,
                          gradient: true,
                          textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: CustomColors.whiteColor),

                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50,),

              ],
            ),
          ),

        ],
      ),
    );
  }
}