import 'package:flutter/material.dart';
import 'package:fruits/models/hot_sales_fruits.dart';
import 'dart:math' as math;

class ListofHotSalesFruits extends StatelessWidget {
  const ListofHotSalesFruits(
      {@required this.background,
      @required this.price,
      @required this.image,
      @required this.hotSalesFruitObject});

  final Color background;
  final int price;
  final String image;
  final HotSalesFruit hotSalesFruitObject;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: <Widget>[
        GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                width: screenWidth * 0.3,
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(screenWidth * 0.05),
                ),
              ),
              Positioned(
                left: (screenWidth * 0.3) / 6,
                top: (screenHeight * 0.15) / 2.5,
                bottom: 0,
                width: 100,
                child: Text(
                  "\$" + price.toString(),
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(((screenWidth * 0.3) / 6) + 25,
                      screenHeight * 0.02, 0, 0),
                  child: Container(
                    margin: EdgeInsets.only(left: screenWidth * 0.05),
                    child: Transform.rotate(
                      angle: math.pi / 6,
                      child: Image.asset(
                        image,
                        height: screenHeight * 0.10,
                      ),
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(
          width: screenWidth * 0.035,
        )
      ],
    );
  }
}
