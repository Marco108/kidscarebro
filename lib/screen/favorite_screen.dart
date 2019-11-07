import 'package:flutter/material.dart';
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
              margin: EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 20),
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: CustomDoctor(
                        name: "Phạm Mạnh Phi",
                        address: "Nhà Bè",
                        specialized: "Tâm lý học",
                        image:
                            "https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-9/37135351_858626234328319_7360813710362804224_n.jpg?_nc_cat=109&_nc_oc=AQmdzEEYQ4lhS4KwwMLq4FzTBVwN7AnSp1l1wGe_csJHt1BLA6zrWAxzE7pNwCu0UdM&_nc_ht=scontent-sin6-1.xx&oh=7f08ca119f1d7e5c836992a085bad034&oe=5E579594",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: CustomDoctor(
                        name: "Phạm Quốc Huy",
                        address: "Quận 3",
                        specialized: "Chuyên giới tính",
                        image:
                            "https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/18813202_1879079208997211_2535962000938818949_n.jpg?_nc_cat=101&_nc_oc=AQl_S4ZSoZyjwi4k4YAQRo2Dm7xRca0xQ5gTaEp-tqGI0BfC5eQihhc7G4PsEi9EuOM&_nc_ht=scontent.fsgn5-7.fna&oh=bb6baeffa9d6bff8b216120142fef8d0&oe=5E5EEF37",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: CustomDoctor(
                        name: "Phạm Quốc Sơn",
                        address: "Thủ đức",
                        specialized: "Sơn tặc",
                        image:
                            "https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/73148705_258995765061143_2231090709744582656_n.jpg?_nc_cat=103&_nc_oc=AQlGEImrMI9FM7riLi-8owGiieAxOtVzB1CUF2-dZ49mbqkLvj53SckLwABSFF8wJUs&_nc_ht=scontent.fsgn5-7.fna&oh=98529e13242c750bc61c225ca75df04c&oe=5E1AD0C9",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: CustomDoctor(
                        name: "Nguyền Thắng",
                        address: "Trung Quốc",
                        specialized: "Ngáo đá",
                        image:
                            "https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/69915306_2752319664801955_7448664440314003456_n.jpg?_nc_cat=101&_nc_oc=AQlcPmHK5_lWQhaRG9rOH9Aq59DPfzcPNMsu7ekYxkqR92MiRKxTJGjRaHRfHGgECpg&_nc_ht=scontent.fsgn5-7.fna&oh=7795891b30ede415a015e316cbd122b5&oe=5E1B96F6",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: CustomDoctor(
                        name: "Nguyền Thắng",
                        address: "Trung Quốc",
                        specialized: "Ngáo đá",
                        image:
                            "https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/69915306_2752319664801955_7448664440314003456_n.jpg?_nc_cat=101&_nc_oc=AQlcPmHK5_lWQhaRG9rOH9Aq59DPfzcPNMsu7ekYxkqR92MiRKxTJGjRaHRfHGgECpg&_nc_ht=scontent.fsgn5-7.fna&oh=7795891b30ede415a015e316cbd122b5&oe=5E1B96F6",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: CustomDoctor(
                        name: "Nguyền Thắng",
                        address: "Trung Quốc",
                        specialized: "Ngáo đá",
                        image:
                            "https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/69915306_2752319664801955_7448664440314003456_n.jpg?_nc_cat=101&_nc_oc=AQlcPmHK5_lWQhaRG9rOH9Aq59DPfzcPNMsu7ekYxkqR92MiRKxTJGjRaHRfHGgECpg&_nc_ht=scontent.fsgn5-7.fna&oh=7795891b30ede415a015e316cbd122b5&oe=5E1B96F6",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: CustomDoctor(
                        name: "Nguyền Thắng",
                        address: "Trung Quốc",
                        specialized: "Ngáo đá",
                        image:
                            "https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/69915306_2752319664801955_7448664440314003456_n.jpg?_nc_cat=101&_nc_oc=AQlcPmHK5_lWQhaRG9rOH9Aq59DPfzcPNMsu7ekYxkqR92MiRKxTJGjRaHRfHGgECpg&_nc_ht=scontent.fsgn5-7.fna&oh=7795891b30ede415a015e316cbd122b5&oe=5E1B96F6",
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: CustomDoctor(
                        name: "Nguyền Thắng",
                        address: "Trung Quốc",
                        specialized: "Ngáo đá",
                        image:
                            "https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/69915306_2752319664801955_7448664440314003456_n.jpg?_nc_cat=101&_nc_oc=AQlcPmHK5_lWQhaRG9rOH9Aq59DPfzcPNMsu7ekYxkqR92MiRKxTJGjRaHRfHGgECpg&_nc_ht=scontent.fsgn5-7.fna&oh=7795891b30ede415a015e316cbd122b5&oe=5E1B96F6",
                      ),
                    ),
                    CustomDoctor(
                      name: "Đặng Quốc Nam",
                      address: "Ký túc xá khu B",
                      specialized: "Óc Chó",
                      image:
                          "https://scontent-hkg3-2.xx.fbcdn.net/v/t1.0-9/74610963_1393529914140355_5808417834425909248_n.jpg?_nc_cat=107&_nc_oc=AQlWsrV8s9Jeil_SMzX7ZRMH1YNucYgTuHIHBITHzOwAZk3W6ZLjumWykZGE3TUSmbA&_nc_ht=scontent-hkg3-2.xx&oh=80361f80ec94265ff8248c107342c255&oe=5E504EF9",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              //padding: EdgeInsets.only(bottom: 30),
              //margin: EdgeInsets.only(top: 0),
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(bottom: 30),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CustomPictureOverlap(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewbornScreen()));
                            },
                            age: "Mới sinh",
                            image:
                                "https://img.freepik.com/free-photo/newborn-baby-enveloped-blue-scarf-sleeps-white-pillow_8353-848.jpg?size=626&ext=jpg"),
                        CustomPictureOverlap(
                            age: "Một tháng",
                            image:
                                "https://image.freepik.com/free-photo/naked-newborn-boy-lies-soft-blanket-before-bright-window_8353-7558.jpg"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        CustomPictureOverlap(
                            age: "Hai tháng",
                            image:
                                "https://image.freepik.com/free-photo/happy-child-orange-sweater-plays-with-feather-floor_8353-182.jpg"),
                        CustomPictureOverlap(
                            age: "Ba tháng",
                            image:
                                "https://image.freepik.com/free-photo/naked-baby-white-background-smiling_88135-3050.jpg"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        CustomPictureOverlap(
                            age: "Bốn tháng",
                            image:
                                "https://image.freepik.com/free-photo/cute-blue-eyed-baby-6-9-months-smiling-playing-white-background-children-s-emotions_97716-161.jpg"),
                        CustomPictureOverlap(
                            age: "Năm tháng",
                            image:
                                "https://image.shutterstock.com/image-photo/adorable-african-baby-diaper-sitting-600w-157817738.jpg"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
