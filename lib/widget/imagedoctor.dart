import 'package:flutter/material.dart';

class CustomDoctor extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final String specialized;
  CustomDoctor({this.image, this.name, this.address, this.specialized});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15),
          height: 70.0,
          width: MediaQuery.of(context).size.width * 2.3,
          color: Colors.transparent,
          child: Container(
            margin: EdgeInsets.only(
              left: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                  //height: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: "SF-UI-BOLD",
                            fontSize: 15,
                            color: Color.fromRGBO(
                              248,
                              133,
                              160,
                              1,
                            ),
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            //Icon(Icons.location_searching),
                            Text(
                              address,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(218, 218, 218, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              specialized,
                              textAlign: TextAlign.right,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(218, 218, 218, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.redAccent,
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
