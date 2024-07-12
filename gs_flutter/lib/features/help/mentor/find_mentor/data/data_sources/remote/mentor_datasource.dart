import 'package:dio/dio.dart';
import 'package:god_sufficient/core/constants/constants.dart';
import 'package:god_sufficient/core/resources/gs_api_provider.dart';
import 'package:god_sufficient/features/help/mentor/find_mentor/data/models/mentor_model.dart';

class MentorDatasource {
  final GSApiProvider apiProvider;

  MentorDatasource({required this.apiProvider});

  Future<MentorModel?> getMentors() async {
    try {
      final response = await apiProvider.getAsync(jsApi);
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
