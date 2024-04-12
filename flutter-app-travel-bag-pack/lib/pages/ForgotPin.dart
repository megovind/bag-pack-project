import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Auth.dart';

class ForgotPin extends StatefulWidget {
  @override
  _ForgotPin createState() => _ForgotPin();
}

class _ForgotPin extends State<ForgotPin> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigoAccent,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.indigoAccent,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Divider(
                color: Colors.white,
                height: 4,
                thickness: 2,
                indent: 60,
                endIndent: 60,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Icon(Icons.business_center),
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
                              hintText: "Email",
                              prefixIcon: Icon(
                                Icons.email,
                              )),
                        ),
                        SizedBox(
                          height: mediaQueryData.size.height * 0.03,
                        ),
                        TextFormField(
                          style: TextStyle(backgroundColor: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "OTP",
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(
                          height: mediaQueryData.size.height * 0.03,
                        ),
                        TextFormField(
                          style: TextStyle(backgroundColor: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
                        SizedBox(
                          height: mediaQueryData.size.height * 0.03,
                        ),
                        TextFormField(
                          style: TextStyle(backgroundColor: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            prefixIcon: Icon(Icons.lock),
                          ),
                        ),
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
                      builder: (context) => AuthPage(),
                    ),
                  ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.indigoAccent),
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
