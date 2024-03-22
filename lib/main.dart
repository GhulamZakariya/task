import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/UI/home/controller/home_controller.dart';

import 'package:task/UI/onboarding/controller/onboarding_controller.dart';
import 'package:task/UI/splash/splash_ui.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreenUi(),
    );
  }
}

final OnboardingController onboardingController = Get.put(OnboardingController());
final HomeController homeController = Get.put(HomeController());


