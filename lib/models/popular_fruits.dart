import 'package:flutter/material.dart';

PopularFruitLists popularFruitLists = PopularFruitLists(popularFruits: [
  PopularFruit(
    image: "assets/images/durian_mon_thong.png",
    starRating: 89.5,
    name: "Durian Mon Tong",
    textColor: Colors.white,
    background: Color(0xfff7e0b3),
    foreground: Color(0xff9f6738),
    price: 33.33,
  ),
  PopularFruit(
    image: "assets/images/ripe_blackberry.png",
    starRating: 89.5,
    name: "Ripe Blackberry",
    textColor: Colors.white,
    background: Color(0xffffc393),
    foreground: Color(0xffa3734d),
    price: 33.33,
  )
]);

class PopularFruitLists {
  List<PopularFruit> popularFruits;
  PopularFruitLists({@required this.popularFruits});
}

class PopularFruit {
  String image;
  Color background;
  Color foreground;
  Color textColor;
  String name;
  double starRating;
  double price;

  PopularFruit(
      {@required this.image,
      @required this.background,
      @required this.foreground,
      @required this.textColor,
      @required this.name,
      @required this.starRating,
      @required this.price});
}
