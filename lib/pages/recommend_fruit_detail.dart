import 'package:flutter/material.dart';
import 'package:fruits/models/recommend_fruits.dart';
import 'package:fruits/widgets/fruit_details_item.dart';

class RecommendFruitDetailsPage extends StatelessWidget {
  RecommendFruitDetailsPage(this.recommendFruit);

  final RecommendFruit recommendFruit;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: fruitDetails(recommendFruit, screenWidth, screenHeight, context),
    );
  }
}

class WaveClipperOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset firstEndPoint = Offset(size.width * .5, 20);
    Offset firstControlPoint = Offset(size.width * .25, 30);
    Offset secondEndPoint = Offset(size.width, 50);
    Offset secondControlPoint = Offset(size.width * .75, 10);

    final path = Path()
      ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy)
      ..quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy)
      ..lineTo(size.width, size.height)
      ..lineTo(0.0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class WaveClipperTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 20);

    var firstControlPoint = Offset(size.width / 4, 0.0);
    var firstEndPoint = Offset(size.width / 2.25, 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 3.25), 65);
    var secondEndPoint = Offset(size.width, 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
