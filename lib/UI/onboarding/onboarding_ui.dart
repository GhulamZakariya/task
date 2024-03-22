import 'package:flutter/material.dart';
import 'package:task/UI/onboarding/widgets/onboarding_items.dart';
import 'package:task/UI/onboarding/widgets/onboarding_single_item_show.dart';
import 'package:task/main.dart';

class OnboardingScreen extends StatelessWidget {




   OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onboardingController.onboardingItems.length,
              controller: onboardingController.pageController,
              onPageChanged: (index) {
                onboardingController.currentIndex.value = index;
              },
              itemBuilder: (context, index) {
                return OnboardingPage(
                  item: onboardingController.onboardingItems[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}