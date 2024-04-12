import 'package:flutter/material.dart';

import 'package:travel_bag_pack/pages/Home.dart';
import './pages//Auth.dart';
import './Widgets/Product_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Bag Pack',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        backgroundColor: Colors.indigo[400],
        buttonColor: Colors.white,
      ),
      routes: {
        "/": (BuildContext context) => AuthPage(),
        '/home': (BuildContext context) => HomePage(),
        '/products-page': (BuildContext context) => ProductCard()
      },
    );
  }
}
