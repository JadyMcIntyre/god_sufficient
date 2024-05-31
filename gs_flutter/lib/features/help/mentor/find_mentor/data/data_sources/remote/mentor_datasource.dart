import 'package:dio/dio.dart';
import 'package:god_sufficient/core/constants/constants.dart';
import 'package:god_sufficient/core/resources/gs_api_provider.dart';

import '../../models/mentor_model.dart';

class MentorDatasource {
  final GSApiProvider apiProvider;

  MentorDatasource({required this.apiProvider});

  Future<MentorModel?> getMentor() async {
    try {
      final response = await apiProvider.getAsync(apiBaseUrl);
      if (response.statusCode == 200) {
        return (MentorModel.fromJson(response.data));
      } else {
        return null;
      }
    } on DioException catch (e) {
      throw Exception(e);
    }
  }
}
