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
      'bb',
      'cc',
      'ddsdadasdsad'),
  DoctorModel(
      'https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/73148705_258995765061143_2231090709744582656_n.jpg?_nc_cat=103&_nc_oc=AQlGEImrMI9FM7riLi-8owGiieAxOtVzB1CUF2-dZ49mbqkLvj53SckLwABSFF8wJUs&_nc_ht=scontent.fsgn5-7.fna&oh=98529e13242c750bc61c225ca75df04c&oe=5E1AD0C9',
      'bbc',
      'cc',
      'dd'),
  DoctorModel(
      'https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/18813202_1879079208997211_2535962000938818949_n.jpg?_nc_cat=101&_nc_oc=AQl_S4ZSoZyjwi4k4YAQRo2Dm7xRca0xQ5gTaEp-tqGI0BfC5eQihhc7G4PsEi9EuOM&_nc_ht=scontent.fsgn5-7.fna&oh=bb6baeffa9d6bff8b216120142fef8d0&oe=5E5EEF37',
      'cxz',
      'cc',
      'dd'),
  DoctorModel(
      'https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/69915306_2752319664801955_7448664440314003456_n.jpg?_nc_cat=101&_nc_oc=AQlcPmHK5_lWQhaRG9rOH9Aq59DPfzcPNMsu7ekYxkqR92MiRKxTJGjRaHRfHGgECpg&_nc_ht=scontent.fsgn5-7.fna&oh=7795891b30ede415a015e316cbd122b5&oe=5E1B96F6',
      'cxz',
      'cc',
      'dd'),
  DoctorModel(
      'https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/69915306_2752319664801955_7448664440314003456_n.jpg?_nc_cat=101&_nc_oc=AQlcPmHK5_lWQhaRG9rOH9Aq59DPfzcPNMsu7ekYxkqR92MiRKxTJGjRaHRfHGgECpg&_nc_ht=scontent.fsgn5-7.fna&oh=7795891b30ede415a015e316cbd122b5&oe=5E1B96F6',
      'cxz',
      'cc',
      'dd'),
  DoctorModel(
      'https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/69915306_2752319664801955_7448664440314003456_n.jpg?_nc_cat=101&_nc_oc=AQlcPmHK5_lWQhaRG9rOH9Aq59DPfzcPNMsu7ekYxkqR92MiRKxTJGjRaHRfHGgECpg&_nc_ht=scontent.fsgn5-7.fna&oh=7795891b30ede415a015e316cbd122b5&oe=5E1B96F6',
      'cxz',
      'cc',
      'dd'),
  DoctorModel(
      'https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/69915306_2752319664801955_7448664440314003456_n.jpg?_nc_cat=101&_nc_oc=AQlcPmHK5_lWQhaRG9rOH9Aq59DPfzcPNMsu7ekYxkqR92MiRKxTJGjRaHRfHGgECpg&_nc_ht=scontent.fsgn5-7.fna&oh=7795891b30ede415a015e316cbd122b5&oe=5E1B96F6',
      'aa',
      'rr',
      'ss'),
  DoctorModel(
      'https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/73148705_258995765061143_2231090709744582656_n.jpg?_nc_cat=103&_nc_oc=AQlGEImrMI9FM7riLi-8owGiieAxOtVzB1CUF2-dZ49mbqkLvj53SckLwABSFF8wJUs&_nc_ht=scontent.fsgn5-7.fna&oh=98529e13242c750bc61c225ca75df04c&oe=5E1AD0C9',
      'bbc',
      'cc',
      'dd'),
  DoctorModel(
      'https://scontent.fsgn5-7.fna.fbcdn.net/v/t1.0-9/73148705_258995765061143_2231090709744582656_n.jpg?_nc_cat=103&_nc_oc=AQlGEImrMI9FM7riLi-8owGiieAxOtVzB1CUF2-dZ49mbqkLvj53SckLwABSFF8wJUs&_nc_ht=scontent.fsgn5-7.fna&oh=98529e13242c750bc61c225ca75df04c&oe=5E1AD0C9',
      'bbc',
      'cc',
      'dd'),
];
