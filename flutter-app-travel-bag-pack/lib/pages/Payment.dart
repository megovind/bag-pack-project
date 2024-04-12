import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPage createState() => _PaymentPage();
}

class _PaymentPage extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.query_builder),
        elevation: 0,
        backgroundColor: Colors.indigoAccent,
      ),
      backgroundColor: Colors.indigoAccent,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "R 10000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey),
                      ),
                      Divider(
                        height: 2,
                        indent: 30,
                        endIndent: 30,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                width: MediaQuery.of(context).size.width * 0.92,
                alignment: Alignment.center,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 5,
                  color: Colors.grey[800],
                  child: Container(
                    height: 180,
                    width: 400,
                    child: Text("data"),
                  ),
                ),
              ),
              Divider(
                height: 2,
                indent: 20,
                endIndent: 20,
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton.icon(
                      color: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                      onPressed: () => print("rate clicked"),
                      icon: Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 16,
                      ),
                      label: Text(
                        "GPay",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    FlatButton.icon(
                      color: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                      onPressed: () => print("rate clicked"),
                      icon: Icon(
                        Icons.payment,
                        color: Colors.white,
                        size: 16,
                      ),
                      label: Text(
                        "Paypal",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 2,
                indent: 20,
                endIndent: 20,
                color: Colors.white,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(20),
                color: Colors.grey[800],
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: "ENTER UPI ID",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.threed_rotation,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.indigoAccent,
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                  onTap: () => {},
                  child: Card(
                    margin: EdgeInsets.fromLTRB(40, 20, 40, 20),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "PROCEED",
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
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
