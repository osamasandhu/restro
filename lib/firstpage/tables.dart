import 'package:flutter/material.dart';
import 'package:project/model/firstmodel.dart';
import 'package:project/pages/secondpage.dart';

class Tables extends StatefulWidget {
  @override
  _TablesState createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 12,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Center(
                  child: Text("Tables",
                      style: TextStyle(color: Colors.white, fontSize: 16))),
            ),
            Material(
              elevation: 8,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              child: Container(
                height: MediaQuery.of(context).size.height / 1.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Color(0xfff2f2f2)),
                child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 0.5),
                  ),
                  itemCount: dummydata.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  OrderPage(dummydata[i].table)),
                        );
                      },
                      child: Material(
                        elevation: 8,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xfffbfbfb),
                          ),

                          child: Center(
                              child: Text(
                                dummydata[i].table,
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ))


//                          Stack(children: [
////                            Positioned(
////                              top: 0,
////                              left: 0,
////                              child: Container(
////                                width: MediaQuery.of(context).size.width / 25,
////                                height: MediaQuery.of(context).size.height / 15,
////                                decoration: BoxDecoration(
////                                    color: Theme.of(context).primaryColor,
////                                    borderRadius: BorderRadius.only(
////                                        topLeft: Radius.circular(10))),
////                              ),
////                            ),
//                            Positioned(
//                                top: 12,
//                                left: 10,
//                                child: Text(
//                                  dummydata[i].leading,
//                                  style: TextStyle(
//                                      fontWeight: FontWeight.bold,
//                                      color: Colors.white,
//                                      fontSize: 22),
//                                )),
//
//                            Center(
//                                child: Text(
//                              dummydata[i].table,
//                              style: TextStyle(
//                                  color: Theme.of(context).primaryColor,
//                                  fontWeight: FontWeight.bold,
//                                  fontSize: 16),
//                            ))
//
//                            // Center(
//
//                            //   child: Image.asset(dummydata[i].pic,height: MediaQuery.of(context).size.height/8,width: MediaQuery.of(context).size.width/20,)
//
//                            // ),
//                          ]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
