import 'package:flutter/material.dart';

class WeightHeight_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(255, 114, 107, 1.0),
                  Color.fromRGBO(255, 165, 131, 1.0),
                ],
              ),
            ),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Text("Chiều cao"),
              Text("Cân nặng"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
