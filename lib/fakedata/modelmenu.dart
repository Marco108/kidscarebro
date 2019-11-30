import 'package:flutter/material.dart';

class MenuModel {
  String title;
  String subtitle;
  String image;
  bool isFavorate;

  MenuModel(String title, String subtitle, String image, bool isFavorate) {
    this.title = title;
    this.subtitle = subtitle;
    this.image = image;
    this.isFavorate = isFavorate;
  }
}

List<MenuModel> lstmenu = [
  MenuModel('aa', 'bb', 'cc', true),
  MenuModel('aav', 'bbc', 'cc', true),
  MenuModel('zxc', 'cxz', 'cc', true),
  MenuModel('zxc', 'cxz', 'cc', true),
  MenuModel('zxc', 'cxz', 'cc', true),
  MenuModel('zxc', 'cxz', 'cc', true),
];
