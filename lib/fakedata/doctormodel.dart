import 'package:flutter/material.dart';

class DoctorModel {
  String image;
  String name;
  String address;
  String specialized;

  DoctorModel(String image, String name, String address, String specialized) {
    this.image = image;
    this.name = name;
    this.address = address;
    this.specialized = specialized;
  }
}

List<DoctorModel> lstdoctor = [
  DoctorModel(
      'https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-9/37135351_858626234328319_7360813710362804224_n.jpg?_nc_cat=109&_nc_oc=AQmdzEEYQ4lhS4KwwMLq4FzTBVwN7AnSp1l1wGe_csJHt1BLA6zrWAxzE7pNwCu0UdM&_nc_ht=scontent-sin6-1.xx&oh=7f08ca119f1d7e5c836992a085bad034&oe=5E579594',
      'Phạm Mạnh Phi',
      '27E Đào Sư Tích',
      'Chuyên khoa mắt'),
  DoctorModel(
      'https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/73148705_258995765061143_2231090709744582656_n.jpg?_nc_cat=103&_nc_oc=AQlGEImrMI9FM7riLi-8owGiieAxOtVzB1CUF2-dZ49mbqkLvj53SckLwABSFF8wJUs&_nc_ht=scontent.fsgn5-7.fna&oh=98529e13242c750bc61c225ca75df04c&oe=5E1AD0C9',
      'Phạm Quốc Sơn',
      'Thủ Đức',
      'Tâm lý học'),
  DoctorModel(
      'https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/18813202_1879079208997211_2535962000938818949_n.jpg?_nc_cat=101&_nc_oc=AQl_S4ZSoZyjwi4k4YAQRo2Dm7xRca0xQ5gTaEp-tqGI0BfC5eQihhc7G4PsEi9EuOM&_nc_ht=scontent.fsgn5-7.fna&oh=bb6baeffa9d6bff8b216120142fef8d0&oe=5E5EEF37',
      'Phạm Quốc Huy',
      '153 Cao Thắng ',
      'Dinh dưỡng'),
  DoctorModel(
      'https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/69915306_2752319664801955_7448664440314003456_n.jpg?_nc_cat=101&_nc_oc=AQlcPmHK5_lWQhaRG9rOH9Aq59DPfzcPNMsu7ekYxkqR92MiRKxTJGjRaHRfHGgECpg&_nc_ht=scontent.fsgn5-7.fna&oh=7795891b30ede415a015e316cbd122b5&oe=5E1B96F6',
      'Nguyễn Thắng',
      'Bình Thạnh',
      'Dinh dưỡng'),
  DoctorModel(
      'https://scontent.fsgn5-6.fna.fbcdn.net/v/t1.0-1/p160x160/75424781_1393529910807022_7226342643716849664_o.jpg?_nc_cat=106&_nc_ohc=aBZmxJQwLEYAQmQXMif_cTXtGjHSbcfc0KTqN0aD3TsT9icE_dV22qanw&_nc_ht=scontent.fsgn5-6.fna&oh=b08ec5afe57552b9761d6e0ed8547952&oe=5E74AA91',
      'Đặng Quốc Nam',
      'Bác sĩ ',
      'Chuyên khoa mắt'),
  DoctorModel(
      'https://scontent.fsgn5-2.fna.fbcdn.net/v/t1.0-1/c0.0.160.160a/p160x160/72564582_2447724525484006_734523795133431808_o.jpg?_nc_cat=107&_nc_ohc=zc5-oVcp3HkAQnp2qqfYZuahQX4qPGq80_trh4uzuTdH5OrEpf0SF37TQ&_nc_ht=scontent.fsgn5-2.fna&oh=8525af305395098f4167d64fc61bdd5e&oe=5E7BD436',
      'Huỳnh Lê Minh Đính',
      'Thủ Đức',
      'Bác sĩ ENT'),
  DoctorModel(
      'https://scontent.fsgn5-2.fna.fbcdn.net/v/t1.0-1/c0.5.160.160a/p160x160/69255332_2273303006333871_3352925786523828224_o.jpg?_nc_cat=105&_nc_ohc=vKOVOtLjn4IAQlfqd_14ijy83s2HgPz01p2SEWPZB1Le5sGs6beZu0sUQ&_nc_ht=scontent.fsgn5-2.fna&oh=1b1e13c2bcdb41cd9d419597f94fa3b6&oe=5E821483',
      'Võ Nhị Anh',
      'Quận 12 ',
      'Dinh dưỡng'),
];
