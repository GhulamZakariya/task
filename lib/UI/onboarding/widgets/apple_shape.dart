import 'package:flutter/material.dart';

class AppleShape extends StatelessWidget {
  const AppleShape({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Transform(
        transform: Matrix4(
          0.53, -0.85, 0, 0,
          0.85, 0.53, 0, 0,
          0, 0, 1, 0,
          0, 0, 0, 1,
        ),
        child: Container(
          width: 287.66,
          height: 123.7,
          color: Color(0xFFC4C4C4),
        ),
      )
    ;
  }
}

class ApplePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red // Apple color
      ..style = PaintingStyle.fill;

    // Drawing the apple shape
    var path = Path();
    path.moveTo(size.width / 2, size.height / 5); // Top point
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.1, size.width * 0.9, size.height / 2); // Right curve
    path.arcToPoint(Offset(size.width / 2, size.height * 0.9),
        radius: Radius.circular(size.width * 0.5),
        clockwise: false); // Bottom curve
    path.quadraticBezierTo(
        size.width * 0.25, size.height * 0.1, size.width / 2, size.height / 5); // Left curve
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
