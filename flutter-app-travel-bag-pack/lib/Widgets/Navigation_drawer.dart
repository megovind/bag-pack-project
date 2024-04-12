import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Menu",
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.indigoAccent,
                          ),
                          onPressed: null),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.person,
                          color: Colors.indigoAccent,
                          size: 50,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
                          child: Text("Govind Meena",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: Text(
                              "Rupee 500",
                              style: TextStyle(color: Colors.grey),
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SingleChildScrollView(
              child: Container(
            height: MediaQuery.of(context).size.height * 0.762,
            color: Colors.indigoAccent,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.pushReplacementNamed(context, "/"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.border_outer,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Orders",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.pushReplacementNamed(context, "/"),
                ),
                ListTile(
                  leading: Icon(
                    Icons.contacts,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Contact Us",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () => Navigator.pushReplacementNamed(context, "/"),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
