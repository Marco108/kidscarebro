import 'package:flutter/material.dart';
import 'package:kid/widget/TextField.dart';
import 'package:kid/widget/buttonsubmit.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20.0),
          padding: EdgeInsets.only(
            top: 70.0,
            left: 20.0,
            right: 20.0,
            // bottom: 30.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "images/logo.png",
                  height: 60,
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: CustomTextField(
                    hintPass: false,
                    icon: Icon(Icons.email),
                    hintText: "Email",
                  ),
                ),
                CustomTextField(
                  hintPass: false,
                  icon: Icon(Icons.perm_contact_calendar),
                  hintText: "Họ và tên",
                ),
                CustomTextField(
                  hintPass: false,
                  icon: Icon(Icons.phone),
                  hintText: "Số điện thoại",
                ),
                CustomTextField(
                  hintPass: false,
                  icon: Icon(Icons.lock),
                  hintText: "Mật khẩu",
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: CustomButton(
                    text: "Đăng Ký",
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text("Thiết kế bởi Phạm Mạnh Phi"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Bạn đã sẵn sàng tạo tài khoản ? "),
                      InkWell(
                        onTap: () {
                          print("Trở về trang đăng nhập");
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Đăng nhập",
                          style: TextStyle(color: Colors.pink),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
