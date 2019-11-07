import 'package:flutter/material.dart';

class CustomCalender extends StatelessWidget {
  final Icon icon;
  final String text;
  //final String text2;
  CustomCalender({this.text, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              icon,
              SizedBox(
                width: 12,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    text,
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 2,
            color: Colors.black38,
          ),
        ],
      ),
    );
  }
}
