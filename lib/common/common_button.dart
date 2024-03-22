import 'package:flutter/material.dart';
import 'package:task/Utilities/colors/CustomColors.dart';

class CommonButton extends StatelessWidget {
  final void Function()? onPressed;
  final Color btnColor;
  final TextStyle textStyle;
  final String title;
  final Size minimumSize;
  final bool gradient;
  final double circular;

  const CommonButton({super.key, this.onPressed, required this.btnColor, required this.title, required this.minimumSize, required this.textStyle, this.gradient=false,this.circular=60});

  @override
  Widget build(BuildContext context) {
    return
      gradient ?

      Container(
        height: 40,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [CustomColors.selectedIndicatorColor, CustomColors.gradientButtonColor]),
          borderRadius: BorderRadius.circular(circular)
        ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(TextStyle(color: CustomColors.whiteColor)),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          maximumSize: MaterialStateProperty.all(minimumSize)
        ),
        child: Text(
            title,
          style: TextStyle(color: CustomColors.whiteColor),

        ),
      ),
    ) : ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          textStyle: MaterialStateProperty.all(textStyle),
          backgroundColor: MaterialStateProperty.all(btnColor),

          maximumSize: MaterialStateProperty.all(minimumSize)
      ),
      child: Text(
        title,
      ),
    ) ;
  }
}
