import 'package:flutter/material.dart';

class SuperModel {
  String title;
  String subtitle;
  String image;

  SuperModel(String title, String subtitle, String image) {
    this.title = title;
    this.subtitle = subtitle;
    this.image = image;
  }
}

List<SuperModel> lstsuper = [
  SuperModel('aa', 'bb', 'cc'),
  SuperModel('aav', 'bbc', 'cc'),
  SuperModel('zxc', 'cxz', 'cc'),
  SuperModel('zxc', 'cxz', 'cc'),
  SuperModel('zxc', 'cxz', 'cc'),
  SuperModel('zxc', 'cxz', 'cc'),
];
