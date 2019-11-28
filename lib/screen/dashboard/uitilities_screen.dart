import 'package:flutter/material.dart';
import 'package:kid/widget/uitilities.dart';

class UitilitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trung tâm tiện ích",
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
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
        //  color: Color.fromRGBO(248, 248, 248, 0.6),
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 10,
            children: <Widget>[
              UitilitiesWidget(
                image: Image.asset(
                  "images/salad.png",
                  height: 45,
                ),
                title: "Thức Ăn",
              ),
              Container(
                child: UitilitiesWidget(
                  image: Image.asset(
                    "images/duck.png",
                    height: 45,
                  ),
                  title: "Đồ Chơi",
                ),
              ),
              UitilitiesWidget(
                image: Image.asset("images/sleeping.png", height: 45),
                title: "Giấc Ngủ",
              ),
              Container(
                child: UitilitiesWidget(
                  image: Image.asset("images/map-location.png", height: 45),
                  title: "Địa Chỉ",
                ),
              ),
              UitilitiesWidget(
                image: Image.asset("images/flower-smile.png", height: 45),
                title: "PhátTriển",
              ),
              UitilitiesWidget(
                image: Image.asset("images/book.png", height: 45),
                title: "Nhà Sách",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
