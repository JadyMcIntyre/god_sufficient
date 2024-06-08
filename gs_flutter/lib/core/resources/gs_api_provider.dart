import 'dart:async';

import 'package:dio/dio.dart';

class GSApiProvider {
  Dio dio = Dio();

  Future<Response> getAsync(String url, {bool requiresAuthentication = true, bool canRetry = false, ValidateStatus? validateStatus}) async {
    try {
      Options options = Options(extra: {'requiresAuthentication': requiresAuthentication, 'canRetry': canRetry});

      // Check if validateStatus is provided and set it if so
      if (validateStatus != null) {
        options.validateStatus = validateStatus;
      }

      var result = await dio.get(url, options: options);

      return result;
    } catch (e) {
      rethrow;
    }
  }
}
