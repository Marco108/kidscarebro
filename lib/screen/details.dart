import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  "https://image.freepik.com/free-photo/japanese-hot-pot-suki-is-popular-food-winter-season_24901-1804.jpg",
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.35,
                left: 50,
                right: 50,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 200,
                  child: Card(
                    color: Color.fromRGBO(238, 130, 238, 0.6),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  height: 50,
                                  width: 10,
                                ),
                                Icon(
                                  Icons.alarm_on,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Thời gian chuẩn bị: 5 phút",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.assignment_turned_in,
                                    color: Colors.white),
                                SizedBox(width: 10),
                                Text(
                                  "Thời gian nấu:         30 phút",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.restaurant, color: Colors.white),
                                SizedBox(width: 10),
                                Text(
                                  "Phục vụ:                   06/10/2019",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.face, color: Colors.white),
                                SizedBox(width: 10),
                                Text(
                                  "Độ tuổi:                    9-12 tháng",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Positioned(
                  top: MediaQuery.of(context).size.height * 0.65,
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Nguyên liệu",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "Gà 500g",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.75,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  child: Image.network(
                      "https://cdn.eva.vn/upload/4-2018/images/2018-11-05/cach-nau-lau-thap-cam-tuoi-ngon-nong-hoi-vua-an-vua-thoi-cho-mua-dong-nay-45343158_1823663971079721_7034805025213775872_n-1541406411-321-width640height480.jpg"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
