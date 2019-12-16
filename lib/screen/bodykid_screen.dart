import 'package:flutter/material.dart';
import 'package:kid/screen/weight_height.dart';

class BodyKid_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        child: Text("Dsadsajadjjah"),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 270,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(255, 114, 107, 1.0),
                      Color.fromRGBO(255, 165, 131, 1.0),
                    ],
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.sort,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          "Cà rốt",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Image.asset("images/avatar.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 270,
            child: Container(
              // color: Colors.pink,
              margin: EdgeInsets.only(bottom: 120),
              height: 100,
              width: MediaQuery.of(context).size.width * 7 / 8,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 9, top: 10),
                        child: Image.asset("images/khung1.png"),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text("M O N T H"),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          "Thông tin em bé 3 tháng tuổi",
                        ),
                        Text(
                          "Trung tâm KidsCare",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            //right: 20,
            top: 400,
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 160,
              //color: Colors.pink,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(181, 125, 252, 1.0),
                    Color.fromRGBO(224, 123, 255, 1.0),
                  ],
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WeightHeight_Screen()));
                },
                child: Text(
                  "BẢN ĐỒ CHIỀU CAO",
                  style:
                      TextStyle(color: Colors.white, fontFamily: "SF-UI-HEAVY"),
                ),
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
