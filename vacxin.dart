import 'package:flutter/material.dart';

class CustomVacxin extends StatelessWidget {
  final String title;
  final String subtitle;
  CustomVacxin({this.title, this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 250),
      child: Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: Color.fromRGBO(250, 119, 111, 0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: <Widget>[
            Text(
              "Vaccine Hepatitis B",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "SF-UI-LIGHT",
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 5, top: 20),
              alignment: Alignment.center,
              child: Text(
                "jaskfjaskfjsakfjkjsakjaskfjsakfjasfhsafhasjfhsajsafasfsafsafsafsaf",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "SF-UI-LIGHT",
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
