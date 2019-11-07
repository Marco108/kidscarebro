import 'package:flutter/material.dart';
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
                      InkWell(
                        onTap: () {
                          setState(() {
                            _index = 0;
                          });
                          /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => FoodScreen(),
                              ));*/
                        },
                        child: Text(
                          "Menu",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _index = 1;
                          });
                        },
                        child: Text(
                          "Super Food",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _index == 0
                      ? Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 30, right: 30),
                                    child: FoodWidget(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => MonthsScreen(),
                                            ));
                                      },
                                      title: "Tháng",
                                      subtitle: "123 like",
                                      image:
                                          "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/goulash.jpg",
                                      isFavorate: true,
                                    ),
                                  ),
                                  FoodWidget(
                                    title: "4-5 Tháng",
                                    subtitle: "123 like",
                                    image:
                                        "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/goulash.jpg",
                                    isFavorate: true,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 30, right: 30),
                                    child: FoodWidget(
                                      title: "4-5 Tháng",
                                      subtitle: "123 like",
                                      image:
                                          "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/goulash.jpg",
                                      isFavorate: true,
                                    ),
                                  ),
                                  FoodWidget(
                                    title: "4-5 Tháng",
                                    subtitle: "123 like",
                                    image:
                                        "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/goulash.jpg",
                                    isFavorate: true,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      : Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 30, right: 10),
                                    child: SuperfoodScreen(
                                      title: "Cà Rốt",
                                      subtitle: "có lợi",
                                      image:
                                          "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_chan_goi_ca_rot_13_.jpg",
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 30, right: 10),
                                    child: SuperfoodScreen(
                                      title: "Cà Rốt",
                                      subtitle: "có lợi",
                                      image:
                                          "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_chan_goi_ca_rot_13_.jpg",
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 30, right: 10),
                                    child: SuperfoodScreen(
                                      title: "Cà Rốt",
                                      subtitle: "có lợi",
                                      image:
                                          "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_chan_goi_ca_rot_13_.jpg",
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 30, right: 10),
                                    child: SuperfoodScreen(
                                      title: "Cà Rốt",
                                      subtitle: "có lợi",
                                      image:
                                          "https://anh.quatructuyen.com/media/catalog/product/cache/1/image/480x480/9df78eab33525d08d6e5fb8d27136e95/b/o/bo_chan_goi_ca_rot_13_.jpg",
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
