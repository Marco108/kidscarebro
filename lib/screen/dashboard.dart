import 'package:flutter/material.dart';
import 'package:kid/screen/dashboard/calender_screen.dart';
import 'package:kid/screen/dashboard/favorite_screen.dart';
import 'package:kid/screen/dashboard/home_screen.dart';
import 'package:kid/screen/dashboard/uitilities_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _index = 0;

  List<Widget> listScreen = [
    HomeScreen(),
    FavoriteScreen(),
    CalenderScreen(),
    UitilitiesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen[_index],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
        child: Icon(Icons.add),
        isExtended: false,
        // notchMargin: 24.0,
        // backgroundColor: Colors.transparent,
        onPressed: () => print('chào nhé'),
        //  child: Container(
        //   decoration: BoxDecoration(
        //      shape: BoxShape.circle,
        //     color: Colors.transparent,
        //    image: DecorationImage(
        //         fit: BoxFit.cover, image: AssetImage("images/facekid.jpg"))),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _index == 0 ? Colors.pinkAccent : Colors.grey,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: _index == 1 ? Colors.pink : Colors.grey,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_contact_calendar,
              color: _index == 2 ? Colors.pink : Colors.grey,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: _index == 3 ? Colors.pink : Colors.grey,
            ),
            title: Text(""),
          ),
        ],
      ),
    );
  }
}
