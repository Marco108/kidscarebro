import 'package:flutter/material.dart';

class CustomPictureOverlap extends StatelessWidget {
  final String image;
  final String age;
  final Function onTap;
  CustomPictureOverlap({this.image, this.age, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          // alignment: Alignment.centerRight,
          width: 150,
          height: 170,
          //  color: Colors.redAccent,
          margin: EdgeInsets.only(top: 40, left: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: InkWell(
            onTap: onTap,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 50, top: 120, bottom: 5),
                  child: Text(
                    age,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 45),
                  child: Text(
                    "By PhiMaly",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Color.fromRGBO(248, 133, 160, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 35,
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
