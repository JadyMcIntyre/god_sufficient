import 'dart:async';

import 'package:dio/dio.dart' as dio;

class GSApiProvider {
  late final dio.Dio _dio;

  Future<dio.Response> getAsync(String url) async {
    return await _dio.get(url);
  }
}
