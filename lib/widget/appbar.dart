import 'package:flutter/material.dart';

class CustomAppBarPage extends StatelessWidget {
  final Icon icon;
  final String title;
  final String tabone;
  final String tabtwo;
  CustomAppBarPage({this.icon, this.title, this.tabone, this.tabtwo});
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(top: 40, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, right: 110, top: 40),
                child: icon,
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 60, right: 80, top: 10),
                child: Text(
                  tabone,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                tabtwo,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
