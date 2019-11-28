import 'package:flutter/material.dart';
import 'package:kid/screen/family_screen.dart';
import 'package:kid/utils/dimension.dart';
import 'package:kid/widget/calender.dart';
import 'package:kid/widget/textfield.dart';

class InformationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_ios,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        flexibleSpace: Container(
          // height: 150,
          decoration: BoxDecoration(
            // shape: BoxShape.circle,
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
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            width: Dimension.getWidth(1),
            //height: 130,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(255, 114, 107, 1.0),
                  Color.fromRGBO(255, 165, 131, 1.0),
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(
                    "https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-9/37135351_858626234328319_7360813710362804224_n.jpg?_nc_cat=109&_nc_oc=AQmdzEEYQ4lhS4KwwMLq4FzTBVwN7AnSp1l1wGe_csJHt1BLA6zrWAxzE7pNwCu0UdM&_nc_ht=scontent-sin6-1.xx&oh=7f08ca119f1d7e5c836992a085bad034&oe=5E579594",
                  ),
                  backgroundColor: Colors.transparent,
                ),
                Text(
                  "Phạm Mạnh Phi",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "SF-UI-BOLD",
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 200),
                        child: CustomCalender(
                          image: Image.asset("images/Shape.png"),
                          text: 'Gia đình',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FamilyScreen()));
                        },
                        child: Icon(Icons.navigate_next),
                      )
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FamilyScreen()));
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 200),
                      child: CustomCalender(
                        image: Image.asset("images/Shape.png"),
                        text: 'Đánh giá',
                      ),
                    ),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
              Divider(),
            ],
          ),
          Column(
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 208),
                      child: CustomCalender(
                        image: Image.asset("images/Shape.png"),
                        text: 'Cài đăt',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FamilyScreen()));
                      },
                      child: Icon(Icons.navigate_next),
                    )
                  ],
                ),
              ),
              Divider(),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 200),
                    child: CustomCalender(
                      image: Image.asset("images/Shape.png"),
                      text: 'Về chúng tôi',
                    ),
                  ),
                ],
              ),
              Divider(),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 200),
                    child: CustomCalender(
                      image: Image.asset("images/Shape.png"),
                      text: 'Phản hồi',
                    ),
                  ),
                ],
              ),
              Divider(),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 200),
                    child: CustomCalender(
                      image: Image.asset("images/Shape.png"),
                      text: 'Đăng xuất',
                    ),
                  ),
                ],
              ),
              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
