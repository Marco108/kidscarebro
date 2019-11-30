import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:kid/base/repone_model.dart';
import 'package:kid/screen/comment/comment_api_provider.dart';
import 'package:kid/screen/comment/comment_model.dart';

class CommentRespository {
  final CommentApiProvider _apiProvider = CommentApiProvider();
  Future<ListChildren> getListComment() async {
    ResponseModel resp = await _apiProvider.getListReview();
    await Future.delayed(Duration(seconds: 1));
    if (resp is SuccessModel) {
      return resp.value;
    } else {
      throw Exception((resp as ErrorModel).errorMassageUI);
    }
  }
}
