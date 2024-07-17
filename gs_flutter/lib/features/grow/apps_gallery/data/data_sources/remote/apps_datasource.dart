import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:god_sufficient/core/constants/constants.dart';
import 'package:god_sufficient/core/resources/gs_api_provider.dart';
import 'package:god_sufficient/features/grow/apps_gallery/data/models/apps_gallery_model.dart';

class AppsDataSource {
  final GSApiProvider apiProvider;

  AppsDataSource({required this.apiProvider});

  Future<AppsGalleryModel?> getApp() async {
    try {
      final response = await apiProvider.getAsync(getAppEndpoint);
      if (response.statusCode == 200) {
        return (AppsGalleryModel.fromJson(response.data));
      } else {
        return null;
      }
    } on DioException catch (e) {
      throw Exception(e);
    }
  }

  Future<List<AppsGalleryModel>?> getApps() async {
    try {
      final Response<dynamic> response = await apiProvider.getAsync(getAppsEndpoint);
      if (response.statusCode == 200) {
        List<dynamic> jsonData = response.data;
        List<AppsGalleryModel> mentors = jsonData.map((json) => AppsGalleryModel.fromJson(json)).toList();
        return mentors;
      } else {
        return null;
      }
    } on DioException catch (e) {
      debugPrint("error in datasource while trying to get apps: $e");
      throw Exception(e);
    }
  }
}
