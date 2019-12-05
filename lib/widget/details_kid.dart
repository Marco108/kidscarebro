import 'package:flutter/material.dart';

class CustomDeatailsKid extends StatelessWidget {
  final String weight;
  final String height;
  final String describe;
  CustomDeatailsKid({this.weight, this.height, this.describe});
  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 50,
      // width: 50,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color.fromRGBO(
          252,
          121,
          111,
          40.0,
        ),
      ),
      margin: EdgeInsets.fromLTRB(50, 400, 50, 0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 15,
              bottom: 15,
            ),
            child: Text(
              "TIÊU CHUẨN CHIỀU CAO VÀ CÂN NẶNG",
              style: TextStyle(
                  color: Colors.white, fontSize: 12, fontFamily: 'SF-UI-BOLD'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  "W:5.6 ~ 8 KG",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-UI-BOLD'),
                ),
                Text(
                  "H:58.0 ~ 66.2 CM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'SF-UI-BOLD'),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Text(
            "Mô tả ",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'SF-UI-BOLD'),
          ),
        ],
      ),
    );
  }
}
