import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'Cart.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPage createState() => _ProductPage();
}

class _ProductPage extends State<ProductPage> {
  List<double> sizeList = [2.4, 5.6, 3.7, 4.6];
  List<Widget> choiceChips = List<Widget>();
  String isProduct = "product";
  double sizeChoice;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Item full name djiajia ajom, nim",
            style: TextStyle(color: Colors.black38),
          ),
          actions: <Widget>[
            Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black38,
                ),
                Positioned(
                  right: 10,
                  top: 20,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(3, 1, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    constraints: BoxConstraints(minHeight: 14, minWidth: 14),
                    child: Text(
                      '4',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                )
              ],
            )
          ],
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.indigoAccent,
          ),
          bottom: PreferredSize(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    "price",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),
                Container(
                  child: FlatButton.icon(
                    color: Colors.indigoAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    onPressed: () => print("rate clicked"),
                    icon: Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 16,
                    ),
                    label: Text(
                      "4.9",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            preferredSize: Size.fromHeight(40.0),
          ),
          centerTitle: true,
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
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 0,
                  child: Container(
                    margin: EdgeInsets.all(0),
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: CarouselSlider(
                      height: MediaQuery.of(context).size.height,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: Duration(seconds: 10),
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      items: [1, 2, 3, 4, 5].map(
                        (i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(color: Colors.white),
                                child: Image.asset(
                                  "assets/bag.png",
                                  repeat: ImageRepeat.noRepeat,
                                  filterQuality: FilterQuality.high,
                                ),
                              );
                            },
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ChoiceChip(
                        label: Text(" Product "),
                        selectedColor: Colors.white,
                        selected: isProduct == "product",
                        onSelected: (selected) {
                          setState(() {
                            isProduct = "product";
                          });
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ChoiceChip(
                        label: Text(" Details "),
                        selectedColor: Colors.white,
                        selected: isProduct == "details",
                        onSelected: (selected) {
                          setState(() {
                            isProduct = "details";
                          });
                        },
                      ),
                    ],
                  ),
                ),
                isProduct == "product"
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Text(
                              "SELECT SIZE",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(20),
                            height: 50,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: sizeList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: ChoiceChip(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    label: Text(
                                      '  ${sizeList[index].toString()}  ',
                                    ),
                                    selectedColor: Colors.white,
                                    selected: sizeChoice == sizeList[index],
                                    onSelected: (choice) {
                                      setState(() {
                                        sizeChoice = sizeList[index];
                                      });
                                    },
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      )
                    : Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.only(bottom: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("data"),
                                  Text("new DatA"),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("data"),
                                  Text("new DatA"),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("data"),
                                  Text("new DatA"),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text("New "),
                                  Text("data"),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("New "),
                                  Text("data"),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("New "),
                                  Text("data")
                                ],
                              ),
                            )
                          ],
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
