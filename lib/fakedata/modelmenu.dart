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
  MenuModel('1-4 tháng', '184 bài đăng', 'cc', true),
  MenuModel('4-8 tháng', '250 bài đăng', 'cc', true),
  MenuModel('8-12 tháng', '300 bài đăng', 'cc', true),
  MenuModel('12-16 tháng', '100 bài đăng', 'cc', true),
  MenuModel('16-20 tháng', '150 bài đăng', 'cc', true),
  MenuModel('20-24 tháng', '230 bài đăng', 'cc', true),
];
