import 'package:flutter/material.dart';
import 'package:kid/screen/dashboard.dart';
//import 'package:kidscare/screen/diary.dart';
//import 'package:kidscare/view/Register.dart';

class IntroPage2 extends StatefulWidget {
  @override
  _IntroPage2State createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  int _index = 0;
  Color backgroundColor = Color.fromRGBO(87, 211, 221, 1.0);
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Androidmonks",
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 3 / 3.2,
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      if (index == 1) {
                        backgroundColor = Color.fromRGBO(255, 205, 0, 1.0);
                      } else if (index == 2) {
                        backgroundColor = Color.fromRGBO(225, 239, 226, 1.0);
                      } else if (index == 3) {
                        backgroundColor = Color.fromRGBO(154, 204, 205, 1.0);
                      } else if (index == 0) {
                        backgroundColor = Color.fromRGBO(87, 211, 221, 1.0);
                      }
                      _index = index;
                    });
                  },
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.network(
                            "https://image.freepik.com/free-vector/it-s-boy-baby-shower-background_23-2147760383.jpg"),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Hay chung tay de bao ve tre em",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Suc khoe tre em duoc dat len hang dau ",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Image.network(
                          "https://image.freepik.com/free-vector/little-boy-with-toys-accessories_24908-60227.jpg"),
                      color: backgroundColor,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Image.network(
                          "https://image.freepik.com/free-vector/cute-boy-collection_24908-60224.jpg"),
                      color: backgroundColor,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Image.network(
                        "https://image.freepik.com/free-vector/baby-shower-card-with-little-boy_24877-51474.jpg",
                        height: 360,
                        width: 360,
                        // fit: BoxFit.cover,
                      ),
                      color: backgroundColor,
                    )
                  ],
                  pageSnapping: true,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 140,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) {
                      bool isColor = index == _index ? true : false;
                      return _buildDot(isColor);
                    }),
                  ),
                  _index == 3
                      ? InkWell(
                          onTap: () {
                            print("clicked");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DashboardScreen()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            padding: EdgeInsets.all(14.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Text(
                              "GET STARTED!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(248, 180, 167, 1.0)),
                            ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "SKIP",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "NEXT",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(bool isColor) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isColor == true ? Colors.white : Colors.grey,
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
        ),
        width: 10,
        height: 10,
        margin: EdgeInsets.only(left: 3));
  }
}
