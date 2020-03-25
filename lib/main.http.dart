import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

void main() => runApp(MyApp(), );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'http 示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('http示例'),
        ),
        body: Center(
          child: FlatButton(
            color: Colors.blue,
            // onPressed: (){
            //   final String url = 'http://www.baidu.com/';
            //   http.get(url).then((response){
            //     print("状态：${response.statusCode}");
            //     print("正文：${response.body}");
            //   });
            // },
            child: Text('发起http请求'),
            onPressed: getHttpClientData,
          ),
        ),
      ),
    );
  }

  Future<void> getHttpClientData() async {
    try{
      final String url = 'https://www.github.com/';
      HttpClient httpClient = HttpClient();
      HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));
      HttpClientResponse response = await request.close();
      var result = await response.transform(utf8.decoder).join();
      print(result);

      httpClient.close();
    } catch (e) {
      print('请求失败： $e');
    } finally {

    }
  }
}