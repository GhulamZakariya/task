import 'package:flutter/material.dart';
import 'package:task/Utilities/Images/ImagesFromLinks/images_from_links.dart';

class SplashScreenVideoGifWidget extends StatelessWidget {
  const SplashScreenVideoGifWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image.network(ImagesFromLinks.splashScreenVideoGif,
      fit: BoxFit.fitHeight,height: MediaQuery.of(context).size.height,);
  }
}
