import 'dart:async';

import 'package:dio/dio.dart';

class GSApiProvider {
  Dio dio = Dio();

  Future<Response> getAsync(String url) async {
    return await dio.get(url);
  }
}
