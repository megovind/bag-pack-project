import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Payment.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPage createState() => _CheckoutPage();
}

class _CheckoutPage extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        title: Text(
          "Checkout",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: null),
      ),
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
                  builder: (context) => PaymentPage(),
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
                        "PLACE ORDER",
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
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  "SHIPPING ADDRESS",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: ListTile(
                  title: Text("Govind Kumar Meena"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("No 123, sub street,"),
                      Text("Main Street"),
                      Text("City Name, Province"),
                      Text("Country, Pincode")
                    ],
                  ),
                  trailing: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Icon(Icons.chevron_right),
                  ),
                  dense: false,
                ),
              ),
              Divider(
                color: Colors.indigoAccent,
                height: 2,
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.crop_landscape,
                    color: Colors.indigoAccent,
                  ),
                  title: Text(
                    "Add Promo Code",
                    style: TextStyle(color: Colors.indigoAccent),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Divider(
                color: Colors.indigoAccent,
                height: 2,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Text(
                  "Sub Total: ",
                  style: TextStyle(color: Colors.indigoAccent),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 4,
                        child: Container(
                            //alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.28,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.28,
                                  width: 20,
                                  child: Card(
                                    color: Colors.red,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Cart"),
                                      Text(
                                        "Item: 3",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        "Rs 82.98",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      );
                    }),
              ),
              Divider(
                height: 2,
                color: Colors.indigoAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
