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
  MenuModel(
      '1-4 tháng',
      '184 bài đăng',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYeDiDKj56lDFrTjmAeHIynjtBBZamPrcBooeMbgJKXlzt42Gf&s',
      true),
  MenuModel(
      '4-8 tháng',
      '250 bài đăng',
      'https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/news/2017/04/17/cong-thuc-nau-bot-an-dam-cho-tre-tu-4-8-thang-tuoi-vao-mua-he-003747.jpg',
      true),
  MenuModel(
      '8-12 tháng',
      '300 bài đăng',
      'http://www.monngon.tv/uploads/images/2017/05/08/49c4f60bea13260252f849569d1df2ce-nau-chao-cho-be-9-thang-tuoi-s.jpg',
      true),
  MenuModel(
      '12-16 tháng',
      '100 bài đăng',
      'http://img.tinbaihay.net/ThumbImages/2015/09/12/cach-nau-chao-cho-be-14-thang-tuoi-thom-ngon-bo-duong-ffbc_450.jpg',
      true),
  MenuModel(
      '16-20 tháng',
      '150 bài đăng',
      'https://dinhduong.online/wp-content/uploads/2016/08/dinh-duong-be-18-thang-tuoi-tap-cho-be-an-rau-thuong-xuyen-hinh-3.jpg',
      true),
  MenuModel(
      '20-24 tháng',
      '230 bài đăng',
      'https://viknews.com/vi/wp-content/uploads/2019/06/th%E1%BB%B1c-%C4%91%C6%A1n-cho-b%C3%A9-2-tu%E1%BB%95i-ki%E1%BB%83u-nh%E1%BA%ADt.jpg',
      true),
];
