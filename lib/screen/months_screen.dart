import 'package:flutter/material.dart';
import 'package:kid/fakedata/monthsmodel.dart';
import 'package:kid/screen/details.dart';
import 'package:kid/widget/months.dart';

class MonthsScreen extends StatelessWidget {
  final List<MonthsModel> monthsmodel;
  MonthsScreen({this.monthsmodel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
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
      body: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailsPage()));
        },
        child: Container(
          child: Wrap(
            //spacing: 40,
            children: List.generate(monthsmodel.length, (index) {
              return Container(
                child: MonthsWidget(
                  title: monthsmodel[index].title,
                  subtitle: monthsmodel[index].subtitle,
                  image: monthsmodel[index].image,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
