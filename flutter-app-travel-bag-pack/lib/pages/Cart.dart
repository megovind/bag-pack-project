import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Luggege.dart';
import 'Checkout.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPage createState() => _CartPage();
}

class _CartPage extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: null),
        title: Text("Cart",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.grey[200],
      bottomSheet: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Total",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Text("Rs 81.90"),
                  Text(
                    "Free Domestic Shipping",
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutPage(),
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
                      padding: EdgeInsets.fromLTRB(16, 10, 0, 10),
                      child: Text(
                        "CHECKOUT",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LuggagePage(),
                        ),
                      ),
                      child: Card(
                        color: Colors.indigo[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.label_outline,
                                    size: 50,
                                  ),
                                  Text("Luggage")
                                ],
                              ),
                            ),
                            Positioned(
                              left: 85,
                              top: 85,
                              child: Icon(
                                Icons.add_circle,
                                size: 16,
                                color: Colors.indigoAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LuggagePage(),
                        ),
                      ),
                      child: Card(
                        color: Colors.indigo[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.label_outline,
                                    size: 50,
                                  ),
                                  Text("Luggage")
                                ],
                              ),
                            ),
                            Positioned(
                              left: 85,
                              top: 85,
                              child: Icon(
                                Icons.add_circle,
                                size: 16,
                                color: Colors.indigoAccent,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                margin: EdgeInsets.all(10),
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  addSemanticIndexes: false,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        height: 130,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 1.0,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60)),
                                child: Image.asset(
                                  "assets/bag.png",
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    20.0, 0.0, 2.0, 0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Faux Sued Ankle Boots',
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 2.0),
                                          ),
                                          Text(
                                            '7, Hot Pink',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'author',
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
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
                                          ),
                                          Divider(
                                            height: 5,
                                            color: Colors.blueGrey,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
