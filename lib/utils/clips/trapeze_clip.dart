import 'package:flutter/material.dart';

class TrapezeClip extends CustomClipper<Path>{
  double slope;
  TrapezeClip({required this.slope});

  @override
  Path getClip(Size size) {

    Path path = Path();

    path.addPolygon([
      Offset(size.width * slope, 0),
      Offset(size.width, 0),
      Offset(size.width, size.height),
      Offset(0, size.height),
    ], true);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper !=this;
  }

}