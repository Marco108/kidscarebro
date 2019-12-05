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
  SuperModel(
      'Cà rốt',
      'Ngoài lượng vitamin A, C dồi dào, cà rốt còn chứa nhiều dưỡng chất và khoáng chất quan trọng gồm canxi, sắt, kali -  là những dưỡng chất cần thiết cho sự phát triển trí não, chiều cao và sức đề kháng của trẻ.',
      'http://matongphonghuong.com/Uploaded/Members/12166/images/2017/chamsocsuckhoe/ca-rot.jpg'),
  SuperModel(
      'Khoai tây',
      'Rất dồi dào chất dinh dưỡng (vitamin C, B1, B2, B5, B12, đồng, sắt, canxi,…) chính là 3 lý do để mẹ lựa chọn cho con.',
      'https://chuabenhgout.net/wp-content/uploads/2019/02/khoai-tay-1.jpg'),
  SuperModel(
      'Đậu cove',
      'Cung cấp vitamin A,K và chất xơ khá dồi dào giúp tăng cường sức đề kháng còn non nớt của trẻ, đồng thời cải thiện hệ tiêu hóa và hệ miễn dịch của trẻ ngày càng hoàn thiện.',
      'http://hatgiongrauhoaqua.com/files/sanpham/136/1/jpg/dau-cove-hat-den-tn-282.jpg'),
  SuperModel(
      'Đu đủ',
      'Cần thiết cho sự phát triển gồm vitamin C,B1,B2 và các khoáng chất(canxi,kali,sắt...), tăng cường đề kháng',
      'https://sohanews.sohacdn.com/thumb_w/660/2018/12/24/du-du-15456481596812076471106-crop-1545648164083574296774.jpg'),
  SuperModel(
      'Táo',
      'Giàu Vitamin C chất xơ rất tốt cho hệ tiêu hóa cũng như đường ruột mỏng manh',
      'https://cdn.tgdd.vn/Products/Images/7578/204534/bhx/tao-do-red-delicious-nhap-khau-my-hop-1kg-4-5-trai-201906201324078028.jpg'),
  SuperModel('Chuối', 'Giàu kali ngăn ngừa chữa bệnh tiêu hóa',
      'https://image.thanhnien.vn/660/uploaded/dieutrang.qc/2018_06_14/mh2/1_qzct.jpg'),
];
