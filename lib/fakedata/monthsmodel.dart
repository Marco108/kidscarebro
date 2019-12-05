import 'package:flutter/material.dart';

class MonthsModel {
  String title;
  String subtitle;
  String image;

  MonthsModel(String title, String subtitle, String image) {
    this.title = title;
    this.subtitle = subtitle;
    this.image = image;
  }
}

List<MonthsModel> lstmonths = [
  MonthsModel('Cháo cà rốt', 'Đây là thức ăn giàu chất dinh dưỡng',
      'https://gonhub.com/wp-content/uploads/2018/10/cach-nau-chao-luon-ca-rot-chao-tom-ca-rot-ngon-cho-be-an-dam-mau-tang-can-20180808-08-2018-010249.jpg'),
  MonthsModel('Cháo bắp', 'Đây là thức ăn giàu chất dinh dưỡng ',
      'https://emvaobep.com/wp-content/uploads/2018/07/cach-nau-chao-ngo-cho-be-an-dam-4.jpg'),
  MonthsModel('Sữa chua trộn dâu tây', 'Đây là thức ăn giàu chất dinh dưỡng ',
      'https://dayphache.edu.vn/wp-content/uploads/2019/05/hinh-sua-chua-dau-tay.jpg'),
  MonthsModel('Cháo bí đỏ sữa', 'Đây là thức ăn giàu chất dinh dưỡng ',
      'https://vinid.net/wp-content/uploads/2019/09/chao-bi-do.jpg'),
  MonthsModel('Cháo khoai tây sữa', 'Đây là thức ăn giàu chất dinh dưỡng ',
      'http://www.mabu.vn/wp-content/uploads/2017/05/sup-khoai-tay-pho-mai.jpg'),
  MonthsModel('Táo nấu', 'Đây là thức ăn giàu chất dinh dưỡng ',
      'https://i.ytimg.com/vi/wtCjgHIcwYU/maxresdefault.jpg'),
];
