import 'package:flutter/material.dart';

class UitilitiesWidget extends StatelessWidget {
  final String title;

  UitilitiesWidget({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 190,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 53,
            top: 39,
            child: Container(
              child: Text(
                "sd",
                style: TextStyle(fontSize: 25),
              ),
              padding: EdgeInsets.all(44),
              transform: Matrix4.rotationZ(0.13),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(1))],
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              child: Column(
                children: <Widget>[
                  //Icon(Icons.restaurant_menu),
                  Text(
                    title,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              margin: EdgeInsets.all(40),
              padding: EdgeInsets.all(40),
              //  margin: EdgeInsets.fromLTRB(130, 330, 130, 340),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(1))],
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
