import 'package:flutter/material.dart';

RecommendFruitLists recommendFruitLists = RecommendFruitLists(recommendFruits: [
  RecommendFruit(
    image: "assets/images/strawberry.png",
    starRating: 89.5,
    name: "Durian Mon Tong",
    textColor: Colors.white,
    background: Color(0xffffcec8),
    foreground: Color(0xffeb163b),
    price: 33.33,
  ),
  RecommendFruit(
    image: "assets/images/orange.png",
    starRating: 89.5,
    name: "Australian Orange",
    textColor: Colors.white,
    background: Color(0xffffbd41),
    foreground: Color(0xffc78c00),
    price: 33.33,
  )
]);

class RecommendFruitLists {
  List<RecommendFruit> recommendFruits;
  RecommendFruitLists({@required this.recommendFruits});
}

class RecommendFruit {
  String image;
  Color background;
  Color foreground;
  Color textColor;
  String name;
  double starRating;
  double price;

  RecommendFruit(
      {@required this.image,
      @required this.background,
      @required this.foreground,
      @required this.textColor,
      @required this.name,
      @required this.starRating,
      @required this.price});
}
