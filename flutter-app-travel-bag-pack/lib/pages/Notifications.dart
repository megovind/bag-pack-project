import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPage createState() => _NotificationsPage();
}

class _NotificationsPage extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        title: Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.indigoAccent,
          ),
          onPressed: null,
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        isThreeLine: true,
                        title: Text("Subject"),
                        subtitle: Text("This is a notification message"),
                        trailing: Text("Yesterday"),
                        leading: Card(
                          margin: EdgeInsets.all(1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(55),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/bag.png",
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 2,
                      )
                    ],
                  ));
            },
          ),
        ),
      ),
    );
  }
}
