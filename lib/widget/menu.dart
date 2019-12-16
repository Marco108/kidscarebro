import 'package:flutter/material.dart';

class FoodWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  final String image;
  final bool isFavorate;
  final Function onTapicon;
  final Function onTap;

  FoodWidget(
      {this.title,
      this.subtitle,
      this.image,
      this.isFavorate,
      this.onTapicon,
      this.onTap});

  @override
  _FoodWidgetState createState() => _FoodWidgetState();
}

class _FoodWidgetState extends State<FoodWidget> {
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
                            widget.title,
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
                            Text(widget.subtitle,
                                style: TextStyle(fontSize: 15)),
                            InkWell(
                              onTap: widget.onTapicon,
                              child: Icon(Icons.favorite,
                                  color: widget.isFavorate == true
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
            onTap: widget.onTap,
            child: Container(
              width: 120,
              height: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.image),
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
