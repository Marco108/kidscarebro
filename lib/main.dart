import 'package:flutter/material.dart';
import 'package:kid/screen/dashboard/calender_screen.dart';
import 'package:kid/screen/dashboard.dart';
import 'package:kid/screen/persional_information.dart';
import 'package:kid/utils/dimension.dart';
import 'package:kid/widget/appbar.dart';
import 'package:kid/widget/checked.dart';
import 'package:kid/widget/details_kid.dart';
import 'package:kid/widget/foodpage.dart';
//import 'package:kidscare/screen/diary.dart';

import 'package:kid/screen/details.dart';
import 'package:kid/screen/pageview.dart';
import 'package:kid/widget/imagedoctor.dart';
import 'package:kid/widget/picture_overlap.dart';
//import 'package:kidscare/screen/Register.dart';
//import 'package:kidscare/view/testui.dart';
import 'package:kid/widget/textfield.dart';
//import 'package:kidscare/widget/TextField.dart' as prefix0;
//import 'package:kidscare/widget/bottomnavigation.dart';
import 'package:kid/screen/login/mainscreen.dart';
import 'package:kid/widget/calender.dart';

//import 'package:kidscare/view/introduce1.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//class _MyAppState extends State<MyApp> {
//@override
//Widget build(BuildContext context) {
//return MaterialApp(home: HomeScreen());
//}
//}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => IntroPage2()),
            ));
  }

//class HomeScreen extends StatelessWidget {
  //List<Widget> myPages = [IntroPage(), IntroPage1()];
  @override
  Widget build(BuildContext context) {
    Dimension.width = MediaQuery.of(context).size.width;
    Dimension.height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Color.fromRGBO(r, g, b, opacity),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromRGBO(255, 76, 141, 1),
                  Color.fromRGBO(252, 130, 106, 1),
                ],
              ),
            ),
          ),
          Center(
            child: Image.asset(
              "images/main.png",
              height: 400,
            ),
          ),
        ],
      ),
      //   body: PageView(
      //  children: <Widget>[IntroPage(), IntroPage1()],
      //   ),
    );
  }
}
