import 'package:flutter/material.dart';

class CircularImageWidget extends StatelessWidget {
  final String url;

  const CircularImageWidget({super.key, required this.url});
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: 28, // Radius of the circular container
      backgroundColor: Colors.transparent,
      backgroundImage: NetworkImage(url), // URL to your image
    );
  }
}