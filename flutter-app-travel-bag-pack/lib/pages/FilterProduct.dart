import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FilterProductPage extends StatefulWidget {
  @override
  _FilterProductPage createState() => _FilterProductPage();
}

class _FilterProductPage extends State<FilterProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.indigoAccent,
          ),
          onPressed: null,
        ),
        title: Text(
          "All Categories",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                child: ListTile(
                  dense: true,
                  leading: Card(
                    child: Image.asset("assets/mens.png"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  title: Text(
                    "MEN'S APPAREL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(70, 5, 5, 0),
                child: Card(
                  elevation: 4,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        dense: true,
                        title: Text(
                          "Add Promo Code",
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: Icon(Icons.chevron_right),
                      );
                    },
                  ),
                ),
              ),
              //womens

              Container(
                child: ListTile(
                  dense: true,
                  leading: Card(
                    child: Image.asset("assets/womens.png"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  title: Text(
                    "WOMEN'S APPAREL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(70, 5, 5, 0),
                child: Card(
                  elevation: 4,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        dense: true,
                        title: Text(
                          "Add Promo Code",
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: Icon(Icons.chevron_right),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
