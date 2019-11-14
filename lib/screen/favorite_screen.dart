import 'package:flutter/material.dart';
import 'package:kid/model/childrenmodel.dart';
import 'package:kid/model/doctormodel.dart';
import 'package:kid/screen/newborn_details.dart';
import 'package:kid/widget/imagedoctor.dart';
import 'package:kid/widget/picture_overlap.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            "Sức khỏe",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
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
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text("Bác sĩ"),
              ),
              Tab(
                child: Text("Trẻ em"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              //margin: EdgeInsets.only(left: 30),
              child: Wrap(
                //spacing: 40,
                children: List.generate(lstdoctor.length, (index) {
                  return Container(
                    child: CustomDoctor(
                      image: lstdoctor[index].image,
                      name: lstdoctor[index].name,
                      address: lstdoctor[index].address,
                      specialized: lstdoctor[index].specialized,
                    ),
                  );
                }),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Wrap(
                spacing: 15,
                children: List.generate(lstchildren.length, (index) {
                  return Container(
                    child: CustomPictureOverlap(
                      image: lstchildren[index].image,
                      age: lstchildren[index].age,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => NewbornScreen(),
                            ));
                      },
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
