
import 'package:flutter/material.dart';
import 'package:task/Utilities/colors/CustomColors.dart';

class CircularIconContainer extends StatelessWidget {
  final IconData iconData;
  final bool image;
  final String url;
  const CircularIconContainer({super.key, required this.iconData,this.image=false,this.url=''});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [CustomColors.iconGradientColor1, CustomColors.iconGradientColor2], // Example gradient colors
        ),
      ),
      child:
      image ?
          Image.network(url) :
      Center(
        child: Icon(
          iconData, // Example icon
          size: 20,
          color: Colors.white, // Icon color
        ),
      ),
    );
  }
}