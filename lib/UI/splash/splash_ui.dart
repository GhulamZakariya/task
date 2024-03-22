import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/UI/onboarding/onboarding_ui.dart';
import 'package:task/UI/splash/widgets/splash_screen_video_gif_widget.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 10),(){
      Get.to(OnboardingScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SplashScreenVideoGifWidget()
    );
  }
}
