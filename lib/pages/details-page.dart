import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/firstpage/pendingorders.dart';
import 'package:project/firstpage/tables.dart';
import 'package:flutter/services.dart';

class DetailsPage extends StatefulWidget {
  @override createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> with SingleTickerProviderStateMixin {


  @override
void initState(){
  super.initState();
  SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
  ]);
}
  @override build(context) => Scaffold(
    appBar: AppBar(title: Text("Details")),
    body: Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),

        child:ListView( children: <Widget>[
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            PendingOrders(),
            
            SizedBox(
              width: 30,
            ),
            Tables()              
          ],
        )
        ]
        )
      ),
  );
}
