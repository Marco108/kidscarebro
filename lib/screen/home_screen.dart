import 'package:flutter/material.dart';
import 'package:kid/model/modelmenu.dart';
import 'package:kid/model/modelsuper.dart';
import 'package:kid/screen/months_screen.dart';
import 'package:kid/widget/menu.dart';
import 'package:kid/widget/super_food.dart';

class HomeScreen extends StatefulWidget {
  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<HomeScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //leading: Icon(Icons.arrow_back_ios),
            backgroundColor: Colors.transparent,
            expandedHeight: 250,
            floating: false,
            pinned: true,
            actions: <Widget>[],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                  "https://images-na.ssl-images-amazon.com/images/I/51v2Nh%2BfPBL._SL1100_.jpg"),
            ),
            title: Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nutrition',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  width: 170,
                ),
                Icon(Icons.search),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.format_list_bulleted)
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _index = 0;
                            });
                          },
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Menu",
                                style: TextStyle(fontSize: 25),
                              ),
                              _index == 0
                                  ? Container(
                                      alignment: Alignment.centerLeft,
                                      color: Colors.black,
                                      width: 120,
                                      height: 2,
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _index = 1;
                            });
                          },
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Super Food",
                                style: TextStyle(fontSize: 25),
                              ),
                              _index == 1
                                  ? Container(
                                      alignment: Alignment.centerLeft,
                                      color: Colors.black,
                                      width: 120,
                                      height: 2,
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _index == 0
                      ? Container(
                          margin: EdgeInsets.only(left: 35),
                          child: Wrap(
                            spacing: 30,
                            children: List.generate(lstmenu.length, (index) {
                              return Container(
                                child: FoodWidget(
                                  title: lstmenu[index].title,
                                  subtitle: lstmenu[index].subtitle,
                                  image: lstmenu[index].image,
                                  isFavorate: lstmenu[index].isFavorate,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => MonthsScreen(),
                                        ));
                                  },
                                ),
                              );
                            }),
                          ),
                        )
                      : Container(
                          margin: EdgeInsets.only(left: 35),
                          child: Wrap(
                            spacing: 30,
                            children: List.generate(lstsuper.length, (index) {
                              return Container(
                                child: Superwidget(
                                  title: lstsuper[index].title,
                                  subtitle: lstsuper[index].subtitle,
                                  image: lstsuper[index].image,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => MonthsScreen(),
                                        ));
                                  },
                                ),
                              );
                            }),
                          ),
                        ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
