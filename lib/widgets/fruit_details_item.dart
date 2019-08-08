import 'package:flutter/material.dart';

Widget fruitDetails(fruit, screenWidth, screenHeight, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Expanded(
        flex: 3,
        child: Container(
          width: double.infinity,
          decoration: new BoxDecoration(
            color: fruit.foreground,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(screenWidth * 0.12),
                bottomRight: Radius.circular(screenWidth * 0.12)),
          ),
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: screenHeight * 0.05),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: screenWidth * 0.06,
                    color: fruit.textColor,
                  ),
                ),
                SizedBox(height: screenHeight * 0.0005),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      fruit.image,
                      height: screenHeight * 0.2,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(screenWidth * 0.12),
                bottomRight: Radius.circular(screenWidth * 0.12)),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.075),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          fruit.name,
                          style: TextStyle(
                              fontSize: screenWidth * 0.07,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: fruit.foreground,
                        size: screenHeight * 0.035,
                      ),
                      SizedBox(width: screenWidth * 0.025),
                      Text(
                        fruit.starRating.toString() + "%",
                        style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            fontFamily: "Arial",
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: screenWidth * 0.2,
                      ),
                      Text(
                        "\$" + fruit.price.toString(),
                        style: TextStyle(
                            fontSize: screenWidth * 0.06,
                            fontFamily: "Arial",
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Size",
                          style: TextStyle(
                              fontSize: screenWidth * 0.055,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  Container(
                    height: screenHeight * 0.045,
                    child: Placeholder(color: fruit.foreground),
                  ),
                  SizedBox(
                    height: screenHeight * 0.045,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Lorem Ipsum is simply dummy text of printing & typesetting industry. Lorem Ipsum is simply a dummy text of printing & typesetting industry.",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: screenWidth * 0.05,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 2.0),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.06),
                  Container(
                    decoration: BoxDecoration(
                      color: fruit.background,
                      borderRadius: BorderRadius.all(
                        Radius.circular(screenWidth * 0.05),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.012),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: screenWidth * 0.13,
                          ),
                          Text(
                            "ADD TO CART",
                            style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2.0),
                          ),
                          SizedBox(
                            width: screenWidth * 0.16,
                          ),
                          Stack(
                            children: <Widget>[
                              SizedBox(
                                height: screenHeight * 0.075,
                                width: screenHeight * 0.1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: fruit.foreground,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(screenWidth * 0.05),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: fruit.textColor,
                                    size: screenHeight * 0.05,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
