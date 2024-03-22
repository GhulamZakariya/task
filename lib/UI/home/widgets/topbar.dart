import 'package:flutter/material.dart';
import 'package:task/UI/home/widgets/graidentBorder.dart';
import 'package:task/Utilities/colors/CustomColors.dart';

class TopStoriesBar extends StatelessWidget {
  const TopStoriesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
        top: 60,
        left: 30,
        child: Row(
          children: [
            Column(
              children: [
                GradientBorderContainer(icon: Icons.add,gradientColors: [CustomColors.selectedIndicatorColor,CustomColors.secondaryColor],),
                const SizedBox(height: 8,),
                Text('Add Lisiting',style: TextStyle(color: CustomColors.whiteColor,fontSize: 12,fontWeight: FontWeight.w500),)
              ],
            ),
            const SizedBox(width: 10,),
            Column(
              children: [
                GradientBorderContainer(icon: Icons.search,gradientColors: [CustomColors.selectedIndicatorColor,CustomColors.secondaryColor],),
                Text('Search',style: TextStyle(color: CustomColors.whiteColor,fontSize: 12,fontWeight: FontWeight.w500),)

              ],
            ),
            const SizedBox(width: 10,),
            Column(
              children: [
                GradientBorderContainer(icon: Icons.notifications,gradientColors: [CustomColors.selectedIndicatorColor,CustomColors.secondaryColor],),
                Text('Notifications',style: TextStyle(color: CustomColors.whiteColor,fontSize: 12,fontWeight: FontWeight.w500),)

              ],
            ),
          ],
        ));
  }
}
