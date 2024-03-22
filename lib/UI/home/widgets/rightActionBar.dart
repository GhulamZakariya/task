import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/UI/home/widgets/sideIcon.dart';

import '../../../Utilities/colors/CustomColors.dart';
import '../../../model/video_model.dart';
import 'imageWidget.dart';

class RightActionBar extends StatelessWidget {
 final Posts post;
   const RightActionBar({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 20,
        bottom: 30,
        child: Column(
          children: [
            Column(
              children: [
                const CircularIconContainer(iconData: Icons.local_offer,),
                Text(post.offers.toString(),style: TextStyle(color: CustomColors.whiteColor),)
              ],
            ),
            const SizedBox(height: 40,),
            Column(
              children: [
                const CircularIconContainer(iconData: FontAwesomeIcons.heart),
                Text(post.likes.toString(),style: TextStyle(color: CustomColors.whiteColor),)
              ],
            ),
            const SizedBox(height: 40,),
            Column(
              children: [
                const CircularIconContainer(iconData: FontAwesomeIcons.comment),
                Text(post.comments.toString(),style: TextStyle(color: CustomColors.whiteColor),)
              ],
            ),
            const SizedBox(height: 40,),
            Column(
              children: [
                const CircularIconContainer(iconData: Icons.share),
                Text(post.shares.toString(),style: TextStyle(color: CustomColors.whiteColor),)
              ],
            ),
            const SizedBox(height: 40,),
            CircularImageWidget(url: post.profileImage!),

          ],
        ));
  }
}
