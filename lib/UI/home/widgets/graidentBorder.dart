
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:task/Utilities/colors/CustomColors.dart';

class GradientBorderContainer extends StatelessWidget {
  final IconData icon;
  final List<Color> gradientColors;

  const GradientBorderContainer({super.key, required this.icon, required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // Width of the container
      height: 50, // Height of the container
      decoration:  BoxDecoration(
        color: Colors.transparent, // Transparent background
        shape: BoxShape.circle,
        border:  GradientBoxBorder(
          gradient: LinearGradient(colors: [CustomColors.selectedIndicatorColor, CustomColors.gradientButtonColor]),
          width: 2,
        ),
         // borderRadius: BorderRadius.circular(16)
      ),
      child: Icon(
        icon,
        size: 20, // Icon size
        color: CustomColors.whiteColor, // Icon color
      ),
    );
  }
}