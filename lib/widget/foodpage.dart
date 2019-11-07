import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final bool isFavorate;
  final Function onTap;

  FoodPage(
      {this.title, this.subtitle, this.image, this.isFavorate, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          // margin: EdgeInsets.only(top: 60),
          height: 160,
          width: 160,
          color: Colors.pink,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                height: 30,
                child: Row(
                  children: <Widget>[
                    Text(subtitle, style: TextStyle(fontSize: 15)),
                    SizedBox(
                      width: 43,
                    ),
                    InkWell(
                      onTap: onTap,
                      child: Icon(Icons.favorite,
                          color: isFavorate == true ? Colors.red : Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 120),
          width: 120,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
