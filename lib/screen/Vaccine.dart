import 'package:flutter/material.dart';
import 'package:kid/widget/vacxin.dart';

class Vaccine_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          // height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://image.freepik.com/free-vector/futuristic-glowing-low-polygonal-syringe-with-vaccine-medication-drops_67515-544.jpg"),
                fit: BoxFit.cover),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: CustomVacxin(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 350, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 130,
                    spreadRadius: 20,
                  ),
                ],
              ),
              child: Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    alignment: Alignment.center,
                    child: Text(
                      "Vaccintation information",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "SF-UI-LIGHT",
                          fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.add_circle,
                          color: Colors.purpleAccent,
                          size: 40,
                        ),
                        Expanded(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            //  mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Lần 1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "SF-UI-BOLD",
                                    fontSize: 15),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "01 Now 2019",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "SF-UI-light",
                                          fontSize: 15),
                                    ),
                                    Text(
                                      "Done",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              127, 237, 213, 1.0),
                                          fontFamily: "SF-UI-BOLD",
                                          fontSize: 15),
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
                  Divider(
                    height: 4,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
