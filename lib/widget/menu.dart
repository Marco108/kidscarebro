import 'package:flutter/material.dart';

class FoodWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final bool isFavorate;
  final Function onTap;

  FoodWidget(
      {this.title, this.subtitle, this.image, this.isFavorate, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          width: 145,
          // margin: EdgeInsets.only(),
          //color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Card(
                elevation: 30,
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //  color: Colors.grey,
                  ),
                  margin: EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          // height: 10,
                          margin: EdgeInsets.only(left: 6),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            title,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Container(
                        height: 30,
                        margin: EdgeInsets.only(
                          top: 4,
                          left: 6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(subtitle, style: TextStyle(fontSize: 15)),
                            InkWell(
                              onTap: onTap,
                              child: Icon(Icons.favorite,
                                  color: isFavorate == true
                                      ? Colors.red
                                      : Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 2,
          width: 110,
          left: 17,
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: 120,
              height: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.themississaugafoodbank.org/wp-content/uploads/2017/06/hero-image@2x.png"),
                  fit: BoxFit.cover,
                ),
                //color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
