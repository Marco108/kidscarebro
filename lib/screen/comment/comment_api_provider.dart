import 'package:dio/dio.dart';
import 'package:kid/base/repone_model.dart';
import 'package:kid/screen/comment/comment_model.dart';

class CommentApiProvider {
  Dio _dio = Dio();
  Future<ResponseModel> getListReview() async {
    Response _resp;
    try {
      _resp = await _dio.get("http://www.mocky.io/v2/5de0d1e9350000225e480de0");
      var value = ListChildren.fromJson(_resp.data);
      return SuccessModel(value: value);
    } on DioError catch (e) {
      //String message = dispatchFailure(e.response.statusCode);
      return ErrorModel(
        statusCode: e.response.statusCode,
        errorMassageUI: e.message,
        value: e.error,
      );
    }
  }
}
