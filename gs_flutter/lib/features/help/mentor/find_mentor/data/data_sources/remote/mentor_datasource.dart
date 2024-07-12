import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:god_sufficient/core/constants/constants.dart';
import 'package:god_sufficient/core/resources/gs_api_provider.dart';
import 'package:god_sufficient/features/help/mentor/find_mentor/data/models/mentor_model.dart';

class MentorDatasource {
  final GSApiProvider apiProvider;

  MentorDatasource({required this.apiProvider});

  Future<MentorModel?> getMentor() async {
    try {
      final response = await apiProvider.getAsync(getMentorEndpoint);
      if (response.statusCode == 200) {
        return (MentorModel.fromJson(response.data));
      } else {
        return null;
      }
    } on DioException catch (e) {
      throw Exception(e);
    }
  }

  Future<List<MentorModel>?> getMentors() async {
    try {
      final response = await apiProvider.getAsync(getMentorsEndpoint);
      if (response.statusCode == 200) {
        List<dynamic> jsonResponse = json.decode(response.data);
        return jsonResponse.map((mentor) => MentorModel.fromJson(mentor)).toList();
      } else {
        return null;
      }
    } on DioException catch (e) {
      debugPrint("error in datasource while trying to get mentors: $e");
      throw Exception(e);
    }
  }
}
