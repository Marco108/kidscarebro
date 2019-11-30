import 'package:dio/dio.dart';

abstract class ResponseModel {
  dynamic value;
}
class SuccessModel implements ResponseModel {
  @override
  dynamic value;
  SuccessModel({
    this.value,
  });
}
class ErrorModel implements ResponseModel {
 @override
 dynamic value;
 final String errorMassageUI;
 final int statusCode;
 ErrorModel({
   this.value,
   this.errorMassageUI,
   this.statusCode,
 });
}