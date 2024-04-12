import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Product.dart';
import 'Notifications.dart';
import 'FilterProduct.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPage createState() => _ProductsPage();
}

class _ProductsPage extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            automaticallyImplyLeading: false,
            elevation: 0,
            leading: RawMaterialButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FilterProductPage(),
                ),
              ),
              child: new Icon(
                Icons.filter_list,
                color: Colors.blue,
                size: 20.0,
              ),
              shape: new CircleBorder(),
              elevation: 2.0,
              fillColor: Colors.white,
              // padding: const EdgeInsets.all(15.0),
            ),
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
                      padding: EdgeInsets.fromLTRB(3, 1, 0, 0),
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      constraints: BoxConstraints(minHeight: 14, minWidth: 14),
                      child: Text(
                        '4',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          body: Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height,
            child: GridView.count(
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 2.0,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              childAspectRatio: 0.7,
              children: List.generate(
                20,
                (index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductPage(),
                      ),
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 5.0,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Image.asset("assets/bag.png"),
                            ),
                            Container(
                              child: Text(
                                "Item Name",
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Price",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
      onWillPop: null,
    );
  }
}
