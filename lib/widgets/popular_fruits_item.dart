import 'package:flutter/material.dart';
import 'package:fruits/models/popular_fruits.dart';
import 'package:fruits/pages/popular_fruit_details.dart';

class ListofPopularFruits extends StatelessWidget {
  const ListofPopularFruits(
      {@required this.foreground,
      @required this.background,
      @required this.price,
      @required this.name,
      @required this.image,
      @required this.starRating,
      @required this.popularFruitObject});

  final Color foreground;
  final Color background;
  final double price;
  final String name;
  final String image;
  final double starRating;
  final PopularFruit popularFruitObject;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PopularFruitDetailsPage(popularFruitObject)));
          },
          child: Container(
              padding: EdgeInsets.all(
                screenWidth * 0.05,
              ),
              width: screenWidth * 0.52,
              decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(screenWidth * 0.05)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          image,
                          height: screenHeight * 0.09,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "\$($price)",
                            style: TextStyle(
                                fontSize: screenWidth * 0.045,
                                color: foreground,
                                fontFamily: "Arial",
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: screenHeight * 0.005,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: foreground,
                                size: screenHeight * 0.02,
                              ),
                              SizedBox(width: screenWidth * 0.01),
                              Text(
                                "$starRating%",
                                style: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    fontFamily: "Arial",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Text(
                    "$name",
                    style: TextStyle(
                        fontSize: screenWidth * 0.057,
                        color: Colors.black,
                        fontFamily: "slabo",
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w600),
                  )
                ],
              )),
        ),
        SizedBox(
          width: screenWidth * 0.035,
        )
      ],
    );
  }
}
