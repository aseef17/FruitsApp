import 'package:flutter/material.dart';

Widget titleBar(screenWidth, screenHeight) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Image.asset(
        "assets/images/menu_icon.png",
        height: screenHeight * 0.035,
      ),
      Container(
        width: screenWidth * 0.12,
        height: screenWidth * 0.12,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(screenWidth * 0.045),
          ),
          image: new DecorationImage(
            fit: BoxFit.fill,
            image: new AssetImage("assets/images/profile.jpg")
          ),
        ),
      )
    ],
  );
}
