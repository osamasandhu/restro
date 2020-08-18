import 'package:flutter/material.dart';

class FoodStreet533Button extends StatelessWidget {

  final String btnName;
  final Function onTap;
  FoodStreet533Button({this.onTap,this.btnName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(45, 40, 45, 30),
      child: Center(
        child: ConstrainedBox(constraints: BoxConstraints.expand(height: 50),
          child: FlatButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              onPressed: onTap       ,       color: Theme.of(context).primaryColor,
              child: Text(
                btnName,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )

          ),
        ),
      ),
    );
  }
}
