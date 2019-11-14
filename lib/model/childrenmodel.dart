import 'package:flutter/material.dart';

class SuperModel {
  String image;
  String age;

  SuperModel(String image, String age) {
    this.image = image;
    this.age = age;
  }
}

List<SuperModel> lstchildren = [
  SuperModel(
      'https://img.freepik.com/free-photo/newborn-baby-enveloped-blue-scarf-sleeps-white-pillow_8353-848.jpg?size=626&ext=jpg',
      'mới sinh'),
  SuperModel(
      'https://image.freepik.com/free-photo/naked-newborn-boy-lies-soft-blanket-before-bright-window_8353-7558.jpg',
      'một tháng'),
  SuperModel(
      'https://image.freepik.com/free-photo/happy-child-orange-sweater-plays-with-feather-floor_8353-182.jpg',
      'hai tháng'),
  SuperModel(
      'https://image.freepik.com/free-photo/naked-baby-white-background-smiling_88135-3050.jpg',
      'ba tháng'),
  SuperModel(
      'https://image.freepik.com/free-photo/cute-blue-eyed-baby-6-9-months-smiling-playing-white-background-children-s-emotions_97716-161.jpg',
      'bốn tháng'),
  SuperModel(
      'https://image.shutterstock.com/image-photo/adorable-african-baby-diaper-sitting-600w-157817738.jpg',
      'năm tháng'),
];
