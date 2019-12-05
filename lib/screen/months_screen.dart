import 'package:flutter/material.dart';
import 'package:kid/fakedata/monthsmodel.dart';
import 'package:kid/widget/months.dart';

class MonthsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("6 - 8 tháng"),
        flexibleSpace: Container(
          //height: 140,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(255, 114, 107, 1.0),
                  Color.fromRGBO(255, 165, 131, 1.0),
                ]),
          ),
        ),
      ),
      body: Container(
        child: Wrap(
          //spacing: 40,
          children: List.generate(lstmonths.length, (index) {
            return Container(
              child: MonthsWidget(
                title: lstmonths[index].title,
                subtitle: lstmonths[index].subtitle,
                image: lstmonths[index].image,
              ),
            );
          }),
        ),
      ),
    );
  }
}
