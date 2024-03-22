import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/UI/onboarding/widgets/onboarding_items.dart';
import 'package:task/Utilities/Images/ImagesFromLinks/images_from_links.dart';

class OnboardingController extends GetxController {
  var currentIndex = 0.obs;
  late PageController pageController;

  final List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      image: ImagesFromLinks.onboardingScreenImage1,
      title: 'Discover Great Deals',
      description: "Have something to sell? Just snap, upload, and price your items. We've made the process simple and quick. Get your items in front of buyers in no time!",
    ),
    OnboardingItem(
      image: ImagesFromLinks.onboardingScreenImage2,
      title: 'Effortless Selling',
      description: "Have something to sell? Just snap, upload, and price your items. We've made the process simple and quick. Get your items in front of buyers in no time!",
    ),
    OnboardingItem(
      image: ImagesFromLinks.onboardingScreenImage3,
      title: 'Promote Your Business',
      description: "Our platform is a powerful tool for businesses as well! Advertise your products or services to a large and engaged audience,",
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentIndex.value);
  }

  void next() {
    currentIndex.value++;
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void previous() {
    currentIndex.value--;
    pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}