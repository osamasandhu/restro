import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodStreet533TextField extends TextFormField {
  FoodStreet533TextField(
      {String label,
        TextInputType keyboardType,
        BuildContext context,
        TextEditingController controller,
        Function(String) validator})
      : super(
    keyboardType: keyboardType,
    textInputAction: TextInputAction.next,
    onFieldSubmitted: (v) {
      FocusScope.of(context).nextFocus();
    },

    //  scrollPadding: EdgeInsets.all(180),
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.person),      isDense: true,
      border: OutlineInputBorder(),
      labelText: label,
    ),
    validator: validator,
    controller: controller,
  );
}

class FoodStreet533PasswordField extends StatefulWidget {
  final IconData icon;

  final String label;
  final TextInputType keyboardType;
  final BuildContext context;
  final TextEditingController controller;
  final Function(String) validator;

  FoodStreet533PasswordField({
    this.icon,
    this.label,
    this.keyboardType,
    this.context,
    this.controller,
    this.validator,
  });

  @override
  _FoodStreet533PasswordFieldState createState() => _FoodStreet533PasswordFieldState();
}

class _FoodStreet533PasswordFieldState extends State<FoodStreet533PasswordField> {
  bool _show = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _show,
      keyboardType: widget.keyboardType,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (v) {
        FocusScope.of(context).nextFocus();
      },
      decoration: InputDecoration(
prefixIcon: Icon(Icons.lock),          isDense: true,
          border: OutlineInputBorder(),
          labelText: widget.label,
          focusColor: Theme.of(context).primaryColor,
          suffix: GestureDetector(
            child: Icon(_show ? Icons.visibility_off : Icons.remove_red_eye,
                color: Theme.of(context).primaryColor, size: 17),
            onTap: () => setState(() => _show = !_show),
          )),
      validator: widget.validator,
      controller: widget.controller,
    );
  }
}
