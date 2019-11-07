import 'package:flutter/material.dart';
import 'package:kid/widget/details_kid.dart';

class NewbornScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://image.freepik.com/free-photo/smiling-baby-girl-celebrating-her-first-birthday-eating-cake_8353-7965.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: CustomDeatailsKid(),
            ),
          ),
          Positioned(
            child: AppBar(
              title: Text("Mới sinh"),
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                  tooltip: 'Share',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
