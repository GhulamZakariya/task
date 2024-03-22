import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/Utilities/colors/CustomColors.dart';
import 'package:task/common/common_button.dart';
import 'package:task/main.dart';
import 'package:task/model/video_model.dart';

class VideoDataWidget extends StatelessWidget {

  final Posts post;

  const VideoDataWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(post.postTitle!,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.whiteColor),),
          Text("AED ${post.price!.toString()}",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: CustomColors.priceColor),),
          Row(
            children: [
              Text(post.description!,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13,color: CustomColors.priceColor),),
              Text(post.hashtagTitles!,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13,color: CustomColors.whiteColor),),
            ],
          ),
          Row(
            children: [

              Image.network(
                post.flag!,
                errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {

                  return  Icon(Icons.error,color: CustomColors.errorColor,);
                },
              ),
              const SizedBox(width: 10,),
              Text(post.country!,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13,color: CustomColors.whiteColor),),
            ],
          ),
          const SizedBox(height: 10,),
          CommonButton(
              onPressed: () {},
              minimumSize: const Size(184,55),
              title: 'Visit Website', btnColor: CustomColors.whiteColor,
              gradient: true,
              circular: 20,
              textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: CustomColors.whiteColor)),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            List.generate(
              post.images!.length,
                  (index) => Obx(
                    () => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == onboardingController.currentIndex.value
                        ? CustomColors.priceColor
                        : CustomColors.whiteColor,
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
