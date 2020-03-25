import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:async';

Future request(url, {formData}) async {
  try{
    Response response;
    Dio dio = Dio();

    dio.options.contentType = 'application/x-www-form-urlencoded';

    response = await dio.post(url, data: formData);

    if(response.statusCode == 200) {
      return response;
    } else {
      throw Exception('数据获取异常！');
    }
  } catch (e) {
    return print('error:::$e');
  }
}


Future getMethod(url) async {
  try{
    Response response;
    Dio dio = Dio();

    // dio.options.contentType = 'application/x-www-form-urlencoded';

    response = await dio.get(url);

    if(response.statusCode == 200) {
      return response;
    } else {
      throw Exception('数据获取异常！');
    }
  } catch (e) {
    return print('error:::$e');
  }
}