import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:travel_bag_pack/Widgets/Navigation_drawer.dart';
import 'Products.dart';
import 'Notifications.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Future<bool> _onBackPressed() {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('You Are Going To Exit The Application!'),
            actions: <Widget>[
              FlatButton(
                child: Text('NO'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text('YES'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        },
      );
    }

    return WillPopScope(
        child: SafeArea(
          child: Scaffold(
            key: _scaffoldKey,
            endDrawer: NavigationDrawer(),
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text("Travel BagPack"),
              automaticallyImplyLeading: false,
              actions: <Widget>[
                Stack(
                  children: <Widget>[
                    IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.notifications),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationsPage())),
                    ),
                    Positioned(
                      right: 22,
                      top: 22,
                      child: Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        constraints:
                            BoxConstraints(minHeight: 14, minWidth: 14),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(3.4, 2, 1, 1),
                          child: Text(
                            '5',
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                      color: Colors.indigoAccent,
                      icon: Icon(Icons.menu),
                      onPressed: () =>
                          _scaffoldKey.currentState.openEndDrawer(),
                    )
                  ],
                ),
              ],
            ),
            body: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Card(
                          elevation: 6.0,
                          color: Colors.indigo,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(25, 8, 25, 16),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                  color: Colors.white,
                                  iconSize: 80,
                                  icon: Icon(Icons.add),
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductsPage(),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Add Money",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 10.0,
                          color: Colors.lightBlue,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(25, 8, 25, 16),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                  color: Colors.white,
                                  iconSize: 80,
                                  icon: Icon(Icons.card_travel),
                                  onPressed: () {},
                                ),
                                Container(
                                  child: Text(
                                    "Business Travel",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Card(
                          elevation: 6.0,
                          color: Colors.greenAccent,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(25, 8, 25, 16),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                  color: Colors.white,
                                  iconSize: 80,
                                  icon: Icon(Icons.settings),
                                  onPressed: () {},
                                ),
                                Container(
                                  child: Text(
                                    "Leisure Travel",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 10.0,
                          color: Colors.yellow[800],
                          child: Container(
                            margin: EdgeInsets.fromLTRB(25, 8, 25, 16),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                  color: Colors.white,
                                  iconSize: 80,
                                  icon: Icon(Icons.card_travel),
                                  onPressed: () {},
                                ),
                                Container(
                                  child: Text(
                                    "Business Travel",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Card(
                          elevation: 6.0,
                          color: Colors.pinkAccent,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(25, 8, 25, 16),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                  color: Colors.white,
                                  iconSize: 80,
                                  icon: Icon(Icons.add),
                                  onPressed: () {},
                                ),
                                Container(
                                  child: Text(
                                    "Mother's Bag",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 10.0,
                          color: Colors.blueGrey[300],
                          child: Container(
                            margin: EdgeInsets.fromLTRB(25, 8, 25, 16),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                  color: Colors.white,
                                  iconSize: 80,
                                  icon: Icon(Icons.pause_circle_filled),
                                  onPressed: () {},
                                ),
                                Container(
                                  child: Text(
                                    "Travel Package's",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        onWillPop: () => _onBackPressed());
  }
}
