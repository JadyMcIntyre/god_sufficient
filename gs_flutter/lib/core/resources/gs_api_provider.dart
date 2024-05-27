import 'dart:async';

import 'package:dio/dio.dart' as dio;

class GSApiProvider {
  late final dio.Dio _dio;

  Future<dio.Response> getAsync(String url,
      {bool requiresAuthentication = true, bool canRetry = false, dio.ValidateStatus? validateStatus}) async {
    try {
      dio.Options options = dio.Options(extra: {'requiresAuthentication': requiresAuthentication, 'canRetry': canRetry});

      // Check if validateStatus is provided and set it if so
      if (validateStatus != null) {
        options.validateStatus = validateStatus;
      }

      var result = await _dio.get(url, options: options);

      return result;
    } catch (e) {
      rethrow;
    }
  }
}
