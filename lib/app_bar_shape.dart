import 'package:flutter/material.dart';

class AppBarShape extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    Path path = Path();

    double curveSize = 30;
    double heigth = rect.height - curveSize;
    double block = rect.width / 8;

    path.lineTo(0, heigth);
    path.lineTo(block, heigth + 0.03 * curveSize);
    var controlPoint = Offset(block + block * 0.5, heigth + 0.03 * curveSize);
    var endPoint = Offset(block * 2 + 0.2 * block, heigth + 0.2 * curveSize);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    controlPoint = Offset(block * 4, heigth + curveSize);
    endPoint = Offset(block * 6, heigth + 0.2 * curveSize);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    controlPoint = Offset(block * 6 + 0.5 * block, heigth + 0.03 * curveSize);
    endPoint = Offset(block * 7, heigth + 0.03 * curveSize);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(block * 8, heigth);
    path.lineTo(block * 8, 0);
    path.close();
    return path;
  }
}