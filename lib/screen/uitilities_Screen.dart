import 'package:flutter/material.dart';
import 'package:kid/widget/uitilities.dart';

class UitilitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        //  color: Color.fromRGBO(248, 248, 248, 0.6),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  UitilitiesWidget(
                    title: "Thức\nĂn",
                  ),
                  Container(
                    child: UitilitiesWidget(
                      title: "Đồ\nChơii",
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  UitilitiesWidget(
                    title: "Thức\nĂn",
                  ),
                  Container(
                    child: UitilitiesWidget(
                      title: "Thức\nĂn",
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  UitilitiesWidget(
                    title: "Thức\nĂn",
                  ),
                  Container(
                    child: UitilitiesWidget(
                      title: "Thức\nĂn",
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  UitilitiesWidget(
                    title: "Thức\nĂn",
                  ),
                  Container(
                    child: UitilitiesWidget(
                      title: "Thức\nĂn",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
