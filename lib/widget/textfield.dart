import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 35.0,
          left: 20.0,
          right: 20.0,
          bottom: 30.0,
        ),
        child: Column(
          children: <Widget>[
            CustomTextField(icon: Icon(Icons.email), hintText: "Email"),
            CustomTextField(
                icon: Icon(Icons.add_shopping_cart), hintText: "Password"),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final Icon icon;
  final String hintText;
  final bool hintPass;
  CustomTextField({this.icon, @required this.hintText, this.hintPass});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: TextField(
        obscureText: hintPass,
        decoration: InputDecoration(
          icon: icon,
          hintText: hintText,
        ),
      ),
    );
  }
}
