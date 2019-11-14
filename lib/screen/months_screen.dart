import 'package:flutter/material.dart';
import 'package:kid/model/monthsmodel.dart';
import 'package:kid/widget/months.dart';

class MonthsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("6 - 8 tháng"),
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
