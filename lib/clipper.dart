import 'package:flutter/material.dart';

class HomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height);
    path.quadraticBezierTo(7, size.height - 58, 70, size.height - 58);
    path.lineTo(size.width - 40, size.height - 58);
    path.quadraticBezierTo(
        size.width, size.height - 58, size.width, size.height - 100);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
