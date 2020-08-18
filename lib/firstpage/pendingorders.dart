import 'package:flutter/material.dart';
import 'package:project/model/firstmodel.dart';

class PendingOrders extends StatefulWidget {
  @override
  _PendingOrdersState createState() => _PendingOrdersState();
}

class _PendingOrdersState extends State<PendingOrders> {

var tables;
 @override
  void initState() {
    super.initState(); 
    tables = [];
  }
  
  @override
  Widget build(BuildContext context) {
    return //ListView( children:<Widget>[
      Expanded(
        
                flex: 1,
                child: ClipRect(
                                  child: Container(
                        
                          width:  MediaQuery.of(context).size.width/4.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfff2f2f2)),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height/12,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Center(child: Text("Orders",style: TextStyle(color: Colors.white,fontSize: 16),)),
                        ),

                        
                        SizedBox(
                          height: MediaQuery.of(context).size.height/1.4,
                          width:  MediaQuery.of(context).size.width/4.3,
                                  
                          child: ListView.builder(
                              padding: EdgeInsets.all(10),
                              itemCount:dummydata.length,
                              itemBuilder: (context, i) {
                                return Row(
                                  children: <Widget>[
                                    Container(
                                      color: Theme.of(context).primaryColor,
                                      width: MediaQuery.of(context).size.width/70,
                                      height: MediaQuery.of(context).size.height/9.2,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Container(
                                        width:   MediaQuery.of(context).size.width/5.3,
                                        height:MediaQuery.of(context).size.height/9.2,
                                        color: Colors.white,
                                        child: ListTile(
                                          title: Text(dummydata[i].table,     style: TextStyle(
                                              color: Theme.of(context).primaryColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                          ),
                                      //    subtitle: Text(dummydata[i].leading),
                                          trailing: Text(dummydata[i].time),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              )
    //]
    //)
    ;
  }
}