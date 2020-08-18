import 'package:flutter/material.dart';
import 'package:project/pages/details-page.dart';
import 'package:flutter/services.dart';
import 'package:project/widgits/foodStreet33Button.dart';
import 'package:project/widgits/foodstreet533TextField.dart';
import 'package:project/widgits/waitingDialog.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
//  bool _val = false;
//
//  bool _val2 = false;
  bool autoValidate = false;
  bool loading = false;
  var _formKey = GlobalKey<FormState>();

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
//
//  void _showalertdialog() {
//    showDialog(
//        context: context,
//        builder: (BuildContext contex) {
//          return AlertDialog(
//            title: new Text(
//              "Error",
//              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//            ),
//            content: Text(
//              "Please Enter Correct information",
//              style: TextStyle(
//                  fontSize: 18, color: Colors.red, fontWeight: FontWeight.w600),
//            ),
//            actions: <Widget>[
//              // usually buttons at the bottom of the dialog
//              FlatButton(
//                child: new Text(
//                  "OK",
//                  style: TextStyle(
//                      fontSize: 18,
//                      color: Colors.black,
//                      fontWeight: FontWeight.w600),
//                ),
//                onPressed: () {
//                  Navigator.of(context).pop();
//                },
//              ),
//            ],
//          );
//        });
//  }
//
//  void _showalertdialog2() {
//    showDialog(
//        context: context,
//        builder: (BuildContext contex) {
//          return AlertDialog(
//            title: new Text(
//              "Error",
//              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//            ),
//            content: Text(
//              "Please Enter Correct UserName",
//              style: TextStyle(
//                  fontSize: 18, color: Colors.red, fontWeight: FontWeight.w600),
//            ),
//            actions: <Widget>[
//              // usually buttons at the bottom of the dialog
//              FlatButton(
//                child: new Text(
//                  "OK",
//                  style: TextStyle(
//                      color: Colors.black,
//                      fontSize: 18,
//                      fontWeight: FontWeight.w600),
//                ),
//                onPressed: () {
//                  Navigator.of(context).pop();
//                },
//              ),
//            ],
//          );
//        });
//  }
//
//  void _showalertdialog3() {
//    showDialog(
//        context: context,
//        builder: (BuildContext contex) {
//          return AlertDialog(
//            title: new Text(
//              "Error",
//              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//            ),
//            content: Text(
//              "Please Enter Correct Password",
//              style: TextStyle(
//                  fontSize: 18, color: Colors.red, fontWeight: FontWeight.w600),
//            ),
//            actions: <Widget>[
//              // usually buttons at the bottom of the dialog
//              FlatButton(
//                child: new Text(
//                  "OK",
//                  style: TextStyle(
//                      color: Colors.black,
//                      fontSize: 18,
//                      fontWeight: FontWeight.w600),
//                ),
//                onPressed: () {
//                  Navigator.of(context).pop();
//                },
//              ),
//            ],
//          );
//        });
//  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Form(
        key: _formKey,
        autovalidate: autoValidate,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Center(
            child: SizedBox(
              width: 450,
              child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
//                    shadowColor: false,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  topLeft: Radius.circular(8))),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Sign in",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      fontFamily: 'Google-Sans',
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )),
                          padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            'image/foodStreet533.jpg',
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(45, 30, 45, 0),
                          child: FoodStreet533TextField(
                            controller: email,
                            label: "Email",
                            context: context,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              return value.isEmpty
                                  ? "Please Enter Email"
                                  : null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(45, 30, 45, 0),
                          child: FoodStreet533PasswordField(
                            controller: password,
                            label: "Password",
                            context: context,
                            validator: (value) {
                              return value.isEmpty
                                  ? "Please Enter Password"
                                  : null;
                            },
                          ),
                        ),
                        FoodStreet533Button(
                          btnName: 'Submit',
                          onTap: () {
                            if (_formKey.currentState.validate()) {

    showDialog(
    context: context,
    builder: (context) =>
    WaitingDialog('Signing In, Please wait ...'));

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => DetailsPage()));

    });
    }

                            else {
                              setState(() {
                                autoValidate = true;
                              });
                            }
                          },
                        ),
                        SizedBox(
                          height: 25,
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    )

//
//
//      Padding(
//        padding: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
//        child: Container(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Padding(
//                padding: const EdgeInsets.symmetric(horizontal: 180),
//                child: Row(
//                  children: <Widget>[
//                    Expanded(
//                      flex: 2,
//                      child: Icon(Icons.person,color: Color(0xff7AA5D2)),
//                    ),
//                    Expanded(
//                      flex: 19,
//                      child: new TextField(
//                        controller: usernameEditingController,
//                        decoration: new InputDecoration(
//                            errorText: _val ? "UserName is required" : null,
//                            border: new OutlineInputBorder(
//                              borderRadius: const BorderRadius.all(
//                                const Radius.circular(10.0),
//                              ),
//                            ),
//                            labelText: "Username"),
//                        onChanged: (value) {
//                          setState(() {
//                            usernameEditingController.text.isEmpty
//                                ? _val = true
//                                : _val = false;
//                          });
//                        },
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              SizedBox(
//                height: 10.0,
//              ),
//              Padding(
//                padding: const EdgeInsets.symmetric(horizontal: 180),
//                child: Row(
//                  children: <Widget>[
//                    Expanded(
//                      flex: 2,
//                      child: Icon(Icons.lock,color: Color(0xff7AA5D2),),
//                    ),
//                    Expanded(
//                      flex: 19,
//                      child: new TextField(
//                        obscureText: true,
//                        controller: passwordEditingController,
//
//                        decoration: new InputDecoration(
//                            errorText: _val2 ? "Password is required" : null,
//                            border: new OutlineInputBorder(
//                              borderRadius: const BorderRadius.all(
//                                const Radius.circular(10.0),
//                              ),
//                            ),
//                            labelText: "Password"),
//                        onChanged: (value) {
//                          setState(() {
//                            passwordEditingController.text.isEmpty
//                                ? _val2 = true
//                                : _val2 = false;
//                          });
//                        },
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.only(top: 20),
//              ),
//              SizedBox(
//                width: 115,
//                height: 40,
//                child: RaisedButton(
//                  splashColor: Colors.deepOrange,
//                    color: Color(0xff7AA5D2),
//                    shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(4)),
//                    child: Text(
//                      "Login",
//                      style: TextStyle(color: Colors.white, fontSize: 18),
//                    ),
//                    onPressed: () {
// if (usernameEditingController.text.isEmpty ||
//                          passwordEditingController.text.isEmpty ) {
//                        setState(() {
//                          usernameEditingController.text.isEmpty
//                              ? _val = true
//                              : _val = false;
//                          passwordEditingController.text.isEmpty
//                              ? _val2 = true
//                              : _val2 = false;
//                        });
//                      }
//                      else {
//                        if(usernameEditingController.text == "admin" && passwordEditingController.text == "admin" )
//                        {
//                           Navigator.pushReplacement(
//                           context,
//                          MaterialPageRoute(builder: (context) => DetailsPage()),
//                         );
//                       }
//
//
//
//else if(usernameEditingController.text != "admin" && passwordEditingController.text == "admin" )
//                        {
//_showalertdialog2();
//                       }
//
//                       else if(usernameEditingController.text == "admin"&& passwordEditingController.text != "admin"  )
//                        {
//_showalertdialog3();
//                       }
//
//                       else{
//                        _showalertdialog();
//                       }
//                      }
//                    }
//                    ),
//              )
//            ],
//          ),
//          color: Colors.white,
//        ),
//      ),
        );
  }
}
