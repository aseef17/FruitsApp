import 'package:flutter/material.dart';
import 'package:fruits/models/hot_sales_fruits.dart';
import 'package:fruits/models/recommend_fruits.dart';
import 'package:fruits/widgets/titlebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:fruits/widgets/popular_fruits_item.dart';
import 'package:fruits/models/popular_fruits.dart';
import 'package:fruits/widgets/hot_sales_fruits_item.dart';
import 'package:fruits/widgets/recommend_fruit_item.dart';

class FruitHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(screenWidth * 0.08, screenHeight * 0.005,
              screenHeight * 0.005, screenWidth * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: screenHeight * 0.075,
              ),
              titleBar(screenWidth, screenHeight),
              SizedBox(height: screenHeight * 0.035),
              Text(
                "Popular Fruits",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "slabo",
                    fontSize: screenWidth * 0.075,
                    letterSpacing: 1.5),
              ),
              SizedBox(height: screenHeight * 0.035),
              popularFruits(screenWidth, screenHeight),
              SizedBox(height: screenHeight * 0.035),
              Text(
                "Hot Sales",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "slabo",
                    fontSize: screenWidth * 0.075,
                    letterSpacing: 1.5),
              ),
              hotSales(screenWidth, screenHeight),
              SizedBox(height: screenHeight * 0.01),
              Text(
                "Recommend",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "slabo",
                    fontSize: screenWidth * 0.075,
                    letterSpacing: 1.5),
              ),
              SizedBox(height: screenHeight * 0.035),
              recommendFruit(screenWidth, screenHeight),
            ],
          ),
        ),
      ),
    );
  }
}

Widget popularFruits(screenWidth, screenHeight) {
  return Container(
    height: screenHeight * 0.22,
    child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: popularFruitLists.popularFruits.length,
      itemBuilder: (BuildContext context, int i) {
        return ListofPopularFruits(
          name: popularFruitLists.popularFruits[i].name,
          image: popularFruitLists.popularFruits[i].image,
          price: popularFruitLists.popularFruits[i].price,
          background: popularFruitLists.popularFruits[i].background,
          foreground: popularFruitLists.popularFruits[i].foreground,
          starRating: popularFruitLists.popularFruits[i].starRating,
          popularFruitObject: popularFruitLists.popularFruits[i],
        );
      },
    ),
  );
}

Widget hotSales(screenWidth, screenHeight) {
  return Container(
    height: screenHeight * 0.22,
    child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: hotSalesFruitLists.hotSalesFruits.length,
      itemBuilder: (BuildContext context, int i) {
        return ListofHotSalesFruits(
          image: hotSalesFruitLists.hotSalesFruits[i].image,
          price: hotSalesFruitLists.hotSalesFruits[i].price,
          background: hotSalesFruitLists.hotSalesFruits[i].background,
          hotSalesFruitObject: hotSalesFruitLists.hotSalesFruits[i],
        );
      },
    ),
  );
}

Widget recommendFruit(screenWidth, screenHeight) {
  return Container(
    height: screenHeight * 0.19,
    child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: recommendFruitLists.recommendFruits.length,
      itemBuilder: (BuildContext context, int i) {
        return ListofRecommendFruits(
          name: recommendFruitLists.recommendFruits[i].name,
          image: recommendFruitLists.recommendFruits[i].image,
          price: recommendFruitLists.recommendFruits[i].price,
          background: recommendFruitLists.recommendFruits[i].background,
          foreground: recommendFruitLists.recommendFruits[i].foreground,
          starRating: recommendFruitLists.recommendFruits[i].starRating,
          recommendFruitObject: recommendFruitLists.recommendFruits[i],
        );
      },
    ),
  );
}
