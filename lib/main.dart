import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/details-page.dart';
import 'package:project/pages/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    status:
        (await SharedPreferences.getInstance()).getBool('First Time') ?? true,
  ));
}

class MyApp extends StatefulWidget {
  final bool status;
  MyApp({this.status});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
    SharedPreferences.getInstance()
        .then((value) => value.setBool('First Time', false));
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          primaryColor: Color(0xff722B8C), accentColor: Color(0xff1CA2DC)),
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          DefaultMaterialLocalizations.delegate,
        ],
        home: widget.status ? Signin() : DetailsPage(),
      ),
    );
  }
}
