import 'package:flutter/material.dart';
import 'package:kid/screen/login/mainscreen.dart';
import 'package:kid/widget/TextField.dart';
import 'package:kid/widget/buttonsubmit.dart';

class ForgetPassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 20.0),
        padding: EdgeInsets.only(
          top: 120.0,
          left: 20.0,
          right: 20.0,
          bottom: 30.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                "images/logo.png",
                height: 60,
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  "Quên Mật Khẩu",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: CustomTextField(
                  hintPass: false,
                  icon: Icon(Icons.email),
                  hintText: "Nhập Email ID",
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50.0),
                child: CustomButton(
                  text: "Tiếp tục",
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
