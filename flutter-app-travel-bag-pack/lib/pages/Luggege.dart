import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Cart.dart';

class LuggagePage extends StatefulWidget {
  @override
  _LuggagePage createState() => _LuggagePage();
}

class _LuggagePage extends State<LuggagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: null),
        title: Text(
          "Luggage",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      bottomSheet: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(),
            ),
          ),
          child: Card(
            color: Colors.indigoAccent,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(8),
            height: MediaQuery.of(context).size.height,
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 3.0,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              childAspectRatio: 0.63,
              children: List.generate(5, (index) {
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 5.0,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Image.asset("assets/bag.png"),
                        ),
                        Container(
                          child: Text(
                            "Price",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.remove_circle,
                                size: 16,
                              ),
                              onPressed: null,
                            ),
                            Text("0"),
                            IconButton(
                              icon: Icon(
                                Icons.add_circle,
                                size: 16,
                              ),
                              onPressed: null,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
