import 'package:flutter/material.dart';

class UitilitiesWidget extends StatelessWidget {
  final String title;
  final Image image;

  UitilitiesWidget({this.title, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: 170,
      width: 190,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 52,
            top: 50,
            child: Container(
              child: Text(
                "sda",
                style: TextStyle(fontSize: 20),
              ),
              padding: EdgeInsets.all(35),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  //Icon(Icons.restaurant_menu),
                  Container(margin: EdgeInsets.only(bottom: 10), child: image),
                  Text(
                    title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              margin: EdgeInsets.all(40),
              padding: EdgeInsets.fromLTRB(35, 20, 15, 10),
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
