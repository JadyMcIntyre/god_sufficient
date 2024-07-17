import 'package:flutter/cupertino.dart';
import 'package:god_sufficient/features/grow/apps_gallery/data/data_sources/remote/apps_datasource.dart';
import 'package:god_sufficient/features/grow/apps_gallery/data/models/app_model.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/entities/app_entity.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/repos/apps_repo.dart';

class AppsRepoImpl extends AppsRepo {
  final AppsDataSource datasource;

  AppsRepoImpl(this.datasource);

  @override
  Future<AppEntity?> getApp() async {
    AppModel? model = await datasource.getApp();
    return model;
  }

  @override
  Future<List<AppModel>?> getApps() async {
    try {
      return await datasource.getApps();
    } catch (e) {
      debugPrint('Error in repo impl while trying to getApps: $e');
      return null;
    }
  }
}
