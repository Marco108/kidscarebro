import 'package:flutter/material.dart';
import 'package:kid/widget/appbar.dart';
import 'package:kid/widget/calender.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:kid/widget/checked.dart';

class CalenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            'Nhật ký',
            style: TextStyle(fontSize: 15),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            height: 140,
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
          bottom: TabBar(
            tabs: <Widget>[
              Tab(child: Text("Vắc xin")),
              Tab(child: Text("Chú ý sức khỏe")),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Mới sinh",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: CustomCheck(
                          isChecked: "Đã tiêm",
                          image:
                              "https://miro.medium.com/max/788/0*BO-DGN1z3Y3I9FXC.jpg",
                          text: "Vaccine Lao BBG",
                          date: "26 tháng 7 2017"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Một tháng",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: CustomCheck(
                          isChecked: "Đã tiêm",
                          image:
                              "https://miro.medium.com/max/788/0*BO-DGN1z3Y3I9FXC.jpg",
                          text: "Vaccin Polio IPV",
                          date: "26 tháng 7 2017"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: CustomCheck(
                          isChecked: "Đã tiêm",
                          image:
                              "https://miro.medium.com/max/788/0*BO-DGN1z3Y3I9FXC.jpg",
                          text: "Vaccine ENGer B",
                          date: "26 tháng 7 2017"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: CustomCheck(
                          isChecked: "Đã tiêm",
                          image:
                              "https://miro.medium.com/max/788/0*BO-DGN1z3Y3I9FXC.jpg",
                          text: "Vaccine Penu",
                          date: "26 tháng 7 2017"),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: CustomCalender(
                    image: Image.asset("images/shape.png", height: 35),
                    text: "10 tháng 2 2019\nNasopharyngtis",
                    //  text2: "Nasopharyngtis",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: CustomCalender(
                    image: Image.asset("images/shape.png", height: 35),
                    text: "23 tháng 8 2019\nSesonal Flu",
                    //text2: "Sesonal Flu",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: CustomCalender(
                    image: Image.asset("images/shape.png", height: 35),
                    text: "30 tháng 5 2018\nEyesore",
                    //  text2: "Eyesore",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: CustomCalender(
                    image: Image.asset("images/shape.png", height: 35),
                    text: "23 tháng 10 2019\nNasopharyngtis",
                    // text2: "Nasopharyngtis",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: CustomCalender(
                    image: Image.asset(
                      "images/shape.png",
                      height: 35,
                    ),
                    text: "23 tháng 2 2019\nNasopharyngtis",
                    // text2: "Nasopharyngtis",
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6.0,
                        color: Colors.black.withOpacity(0.5),
                        // offset: Offset(6.0, 2.0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0, right: 150),
                        child: Text(
                          "Tạo nhật ký mới",
                          style: TextStyle(
                              color: Color.fromRGBO(253, 184, 181, 1.0),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        size: 30,
                        color: Color.fromRGBO(253, 184, 181, 1.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
