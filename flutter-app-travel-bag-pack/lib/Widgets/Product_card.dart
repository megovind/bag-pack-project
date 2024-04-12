import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset("name"),
            ),
            Container(
              child: Text("Item Name"),
            ),
            Container(
              child: Text("Price"),
            ),
          ],
        ),
      ),
    );
  }
}
