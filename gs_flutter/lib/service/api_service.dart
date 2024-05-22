import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../src/data/models/mentor_response_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'http://localhost:5015/api/')
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('mentor')
  Future<MentorResponseModel> getMentor();
}
