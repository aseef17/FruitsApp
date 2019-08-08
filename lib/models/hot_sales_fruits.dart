import 'package:flutter/material.dart';

HotSalesFruits hotSalesFruitLists = HotSalesFruits(hotSalesFruits: [
  HotSalesFruit(
    image: "assets/images/green_apple.png",
    background: Color(0xffd7e4af),
    price: 33,
  ),
  HotSalesFruit(
    image: "assets/images/red_apple.png",
    background: Color(0xffffc8c4),
    price: 23,
  ),
  HotSalesFruit(
    image: "assets/images/grapes.png",
    background: Color(0xffc1cbff),
    price: 22,
  ),
]);

class HotSalesFruits {
  List<HotSalesFruit> hotSalesFruits;
  HotSalesFruits({@required this.hotSalesFruits});
}

class HotSalesFruit {
  String image;
  Color background;
  int price;

  HotSalesFruit(
      {@required this.image,
      @required this.background,
      @required this.price});
}
