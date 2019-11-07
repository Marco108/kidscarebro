import 'package:flutter/material.dart';
import 'package:kid/screen/dashboard.dart';
import 'package:kid/screen/forgetpass.dart';
import 'package:kid/screen/register.dart';
import 'package:kid/screen/pageview.dart';
import 'package:kid/widget/TextField.dart';
import 'package:kid/widget/buttonsubmit.dart';

class LoginPage extends StatelessWidget {
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
              Image.asset("images/logo.png"),
              Container(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                // margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child:
                    CustomTextField(icon: Icon(Icons.email), hintText: "Email"),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30.0),
                child: CustomTextField(
                    icon: Icon(Icons.lock), hintText: "Password"),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: CustomButton(
                  text: 'Sign In',
                  onTap: () {
                    print("Continue");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => IntroPage2()));
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
                  "Forgot Password",
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    InkWell(
                      onTap: () {
                        print("click");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()));
                      },
                      child: Text(
                        "Sign Up",
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
    );
  }
}
