import 'package:flutter/material.dart';
import 'package:fruits/pages/fruits_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruit App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          fontFamily: "slabo",
          appBarTheme: AppBarTheme(elevation: 0, color: Colors.white)),
      home: FruitHome(),
    );
  }
}
