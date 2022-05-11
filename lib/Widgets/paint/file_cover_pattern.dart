import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icloudbox/Utils/colors.dart';

class FileCoverPattern extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
        ..color = Colors.red
        ..style = PaintingStyle.stroke;

    Path path = Path();
    path.relativeMoveTo(size.width-40,0 );
    path.relativeLineTo(0, size.height);
    path.relativeLineTo(40, 0);
    path.relativeLineTo(0, -size.height);
    path.relativeLineTo(-40, 0);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}