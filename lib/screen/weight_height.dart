import 'package:flutter/material.dart';

class WeightHeight_Screen extends StatelessWidget {
  Future<String> createAlertDialog(BuildContext context) {
    //  TextEditingController customController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Nhật ký phát triển của bé",
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: "Date",
                  ),
                  //controller: customController,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Height (cm)",
                  ),
                  // controller: customController,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Weight (cm)",
                  ),
                  //controller: customController,
                ),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.deepOrange,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Lưu",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "SF-UI-MEDIUM"),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          isExtended: false,
          onPressed: () {
            createAlertDialog(context).then((onValue) {
              SnackBar mySnackBar =
                  new SnackBar(content: Text("Đã lưu thông tin $onValue"));
              Scaffold.of(context).showSnackBar(mySnackBar);
            });
          },
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
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
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Cập nhật chiều cao gần đây",
                    style: TextStyle(
                      fontFamily: "SF-UI-medium",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "images/heighticon.png",
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "91.0 cm",
                          style: TextStyle(
                              fontFamily: "SF-UI-HEAVY",
                              color: Colors.pink,
                              fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text("15 tháng 7 2019"),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Cập nhật câng nặng gần đây",
                    style: TextStyle(
                      fontFamily: "SF-UI-medium",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "images/scale.png",
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "14 kg",
                          style: TextStyle(
                              fontFamily: "SF-UI-HEAVY",
                              color: Colors.pink,
                              fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text("15 tháng 7 2019"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
