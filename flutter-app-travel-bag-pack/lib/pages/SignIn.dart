import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'ForgotPin.dart';
import 'Home.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(color: Colors.indigoAccent),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(2.0)),
                margin: EdgeInsets.only(top: mediaQueryData.size.height * 0.03),
                width: mediaQueryData.size.width * 0.88,
                height: mediaQueryData.size.height * 0.11,
                child: Card(
                  color: Colors.white,
                  child: Image.asset("assets/logo.png"),
                ),
              ),
              Card(
                margin: EdgeInsets.fromLTRB(28, 14, 28, 28),
                elevation: 4.0,
                child: Container(
                  margin: EdgeInsets.all(mediaQueryData.size.height * 0.05),
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          style: TextStyle(backgroundColor: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Email / Mobile No",
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mediaQueryData.size.height * 0.03,
                        ),
                        TextFormField(
                          style: TextStyle(backgroundColor: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Pin Number",
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(mediaQueryData.size.height * 0.03),
                width: mediaQueryData.size.width * 0.8,
                child: RaisedButton(
                  padding: EdgeInsets.all(15),
                  elevation: 4.0,
                  shape: StadiumBorder(),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.indigoAccent),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForgotPin())),
                child: Container(
                  margin: EdgeInsets.only(
                      top: mediaQueryData.size.height * 0.01,
                      bottom: mediaQueryData.size.height * 0.05),
                  child: Text(
                    "Forgot Pin",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
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
