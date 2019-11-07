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
                ),
                CustomTextField(
                  icon: Icon(Icons.email),
                  hintText: "Email address",
                ),
                CustomTextField(
                  icon: Icon(Icons.perm_contact_calendar),
                  hintText: "Full Name",
                ),
                CustomTextField(
                  icon: Icon(Icons.phone),
                  hintText: "Phone Number",
                ),
                CustomTextField(
                  icon: Icon(Icons.lock),
                  hintText: "Password",
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: CustomButton(
                    text: "Sign Up",
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text("By creating design Phạm Mạnh Phi"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an account?"),
                      InkWell(
                        onTap: () {
                          print("Trở về trang đăng nhập");
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Sign In",
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
