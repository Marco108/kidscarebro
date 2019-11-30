import 'package:flutter/material.dart';
import 'package:kid/screen/dashboard.dart';
import 'package:kid/screen/login/forgetpass.dart';
import 'package:kid/screen/login/register.dart';
import 'package:kid/screen/pageview.dart';
import 'package:kid/widget/TextField.dart';
import 'package:kid/widget/buttonsubmit.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: EdgeInsets.only(top: 50.0, bottom: 10.0),
                // margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: CustomTextField(
                  hintPass: false,
                  icon: Icon(Icons.email),
                  hintText: "Email",
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: CustomTextField(
                      hintPass: !_showPass,
                      icon: Icon(Icons.lock),
                      hintText: "Mật khẩu",
                    ),
                  ),
                  GestureDetector(
                    onTap: onToggleShowPass,
                    child: Text(_showPass ? "Hide" : "Show",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: CustomButton(
                  text: 'Đăng Nhập',
                  onTap: () {
                    print("Continue");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()));
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  print('click');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgetPassPage()));
                },
                child: Text(
                  "Quên mật khẩu",
                  style: TextStyle(color: Colors.pink),
                ),
              ),
              InkWell(
                onTap: () {
                  print('click');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgetPassPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Không có tài khoản ? "),
                      InkWell(
                        onTap: () {
                          print("click");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        child: Text(
                          "Đăng ký",
                          style: TextStyle(color: Colors.pink),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }
}
