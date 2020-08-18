import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:vertical_tabs/vertical_tabs.dart';

import 'package:project/model/pizzamodel.dart';
import 'package:flutter/services.dart';

class OrderPage extends StatefulWidget {
  final String pageTitle;

  OrderPage(this.pageTitle);
  @override
  _OrderPageState createState() => _OrderPageState(pageTitle);
}

class _OrderPageState extends State<OrderPage> {
  String tableName;
  _OrderPageState(this.tableName);
  var orders;

  int _incrementCounter(value) {
    setState(() {
      value++;
      print(value);
    });
    return value;
  }

  int _decrementCounter(value) {
    setState(() {
      if (value > 1) {
        value--;
      }
    });
    return value;
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    orders = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(tableName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Theme.of(context).primaryColor,
                    child: Center(
                      child: Text(
                        "Food Menu",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Material(
                    elevation: 8,
                    child: Container(
                        color: Color(0xffF2F2F2),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.45,
                        child: VerticalTabs(
                          changePageDuration: Duration(milliseconds: 500),
                          selectedTabBackgroundColor: Colors.white,
                          indicatorColor: Theme.of(context).primaryColor,
                          tabsWidth: 120,
                          tabs: <Tab>[
                            Tab(
                                child: Text(
                              'Drinks',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                            Tab(
                                child: Text('Burger',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            Tab(
                                child: Text('Pizza',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ],
                          contents: <Widget>[
                            GridView.builder(
                              padding: EdgeInsets.all(18),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      crossAxisSpacing: 25,
                                      mainAxisSpacing: 25),
                              itemBuilder: (context, i) {
                                return GestureDetector(
                                  onTap: () {
                                    // _showalertdialog();
                                    setState(() {
                                      orders.add({
                                        "name": pizzadata[i].drink.toString(),
                                        "qty": pizzadata[i].quantity
                                      });
                                      print(orders);
                                    });
                                  },
                                  child: Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(6),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          // border: Border.all(width: 3),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        child: Center(
                                            child: Text(
                                          pizzadata[i].drink,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ))),
                                  ),
                                );
                              },
                              itemCount: pizzadata.length,
                            ),

                            ///Burger

                            GridView.builder(
                              padding: EdgeInsets.all(18),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      crossAxisSpacing: 25,
                                      mainAxisSpacing: 25),
                              itemBuilder: (context, i) {
                                return GestureDetector(
                                  onTap: () {
                                    // _showalertdialog();
                                    setState(() {
                                      orders.add({
                                        "name": pizzadata[i].burger.toString(),
                                        "qty": pizzadata[i].quantity
                                      });
                                      print(orders);
                                    });
                                  },
                                  child: Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(6),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          // border: Border.all(width: 3),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        child: Center(
                                            child: Text(
                                          pizzadata[i].burger,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ))),
                                  ),
                                );
                              },
                              itemCount: pizzadata.length,
                            ),

                            ///
                            GridView.builder(
                              padding: EdgeInsets.all(18),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      crossAxisSpacing: 25,
                                      mainAxisSpacing: 25),
                              itemBuilder: (context, i) {
                                return GestureDetector(
                                  onTap: () {
                                    // _showalertdialog();
                                    setState(() {
                                      orders.add({
                                        "name": pizzadata[i].pizza.toString(),
                                        "qty": pizzadata[i].quantity
                                      });
                                      print(orders);
                                    });
                                  },
                                  child: Material(
                                    elevation: 8,
                                    borderRadius: BorderRadius.circular(6),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          // border: Border.all(width: 3),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        child: Center(
                                            child: Text(
                                          pizzadata[i].pizza,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ))),
                                  ),
                                );
                              },
                              itemCount: pizzadata.length,
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
                flex: 2,
                child: Material(
                  elevation: 8,
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom:
                              5), //  height: MediaQuery.of(context).size.height/1.6,
                      color: Color(0xffF2F2F2),
                      child: Column(children: <Widget>[
                        Container(
                            height: MediaQuery.of(context).size.height / 12,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor
                                //Color(0xff7AA5D2),
                                ),
                            child: Center(
                                child: Text(
                              "Custom order",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ))),
                        Container(
                            color: Theme.of(context).accentColor,
                            height: MediaQuery.of(context).size.height / 15,
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    Text(
                                      "QTY",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ))),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 2.1,
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              child: ListView.builder(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  itemCount: orders.length,
                                  itemBuilder: (context, i) {
                                    return Dismissible(
                                      background: Container(
                                        color: Colors.red,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              Icon(
                                                Icons.delete,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "Delete",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      key: UniqueKey(),
                                      onDismissed: (direction) {
                                        Scaffold.of(context).showSnackBar(SnackBar(
                                            content: Text(
                                                "${orders[i]["name"].toString()} dismissed")));
                                        setState(() {
                                          print("Deleting ${orders[i]}");
                                          orders.removeAt(i);

                                          print(orders);
                                        });
                                      },
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Expanded(
                                                    child: Text(
                                                        orders[i]["name"]
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold))),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 4),
                                                  child: Row(children: <Widget>[
                                                    Container(
                                                      width: 40,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          border: Border.all(
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor)),
                                                      child: IconButton(
                                                        icon: Icon(
                                                          Icons.remove,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                        onPressed: () {
                                                          orders[i]["qty"] =
                                                              _decrementCounter(
                                                                  orders[i]
                                                                      ["qty"]);
                                                          // debugPrint(_decrementCounter(orders[i]["qty"].quantity).toString();
                                                          // debugPrint(orders[i].toString());
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 10),
                                                      child: Text(
                                                        orders[i]["qty"]
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 40,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          border: Border.all(
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor)),
                                                      child: IconButton(
                                                        icon: Icon(
                                                          Icons.add,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                        onPressed: () {
                                                          debugPrint(orders[i]["qty"].toString());
                                                          orders[i]["qty"] = _incrementCounter(orders[i]["qty"]);
                                                          debugPrint((orders[i]).toString());

                                                        },
                                                      ),
                                                    )
                                                  ]),
                                                ),
                                              ]),
                                          Divider()
                                        ],
                                      ),
                                    );
                                  }),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(
                                        10,
                                      ),
                                      bottomRight: Radius.circular(10))),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        ButtonTheme(
                          buttonColor: Theme.of(context).accentColor,
                          minWidth: MediaQuery.of(context).size.width / 4,
                          height: 50.0,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              print("This is Your Order $orders");

                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Place Order",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        )
                      ])),
                ))
          ],
        ),
      ),
    );
  }
}
