import 'package:flutter/material.dart';

class ItemCardModel {
  String icon;
  String title;
  //String content;
  //bool isRight;

  ItemCardModel(String icon, String title /*String content, bool isRight*/) {
    this.icon = icon;
    this.title = title;
    //this.content = content;
    //this.isRight = isRight;
  }
}

List<ItemCardModel> lst = [
  ItemCardModel(
    'aa',
    'bb',
    // 'cc',
    //true,
  ),
  ItemCardModel(
    'aav',
    'bbc',
    // 'ccs',
    // false,
  ),
  ItemCardModel('zxc', 'cxz'),
  ItemCardModel('zxc', 'cxz'),
  ItemCardModel('zxc', 'cxz'),
  ItemCardModel('zxc', 'cxz'),
  ItemCardModel('zxc', 'cxz'),
  ItemCardModel('zxc', 'cxz'),
  ItemCardModel('zxc', 'cxz'),
  ItemCardModel('zxc', 'cxz'),
  ItemCardModel('zxc', 'cxz')
];
