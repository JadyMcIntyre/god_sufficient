import 'package:flutter/cupertino.dart';
import 'package:god_sufficient/features/grow/apps_gallery/data/data_sources/remote/apps_gallery_datasource.dart';
import 'package:god_sufficient/features/grow/apps_gallery/data/models/apps_gallery_model.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/entities/app_entity.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/repos/apps_repo.dart';

class AppsGalleryRepoImpl extends AppsRepo {
  final AppsGalleryDataSource datasource;

  AppsGalleryRepoImpl(this.datasource);

  @override
  Future<AppEntity?> getApp() async {
    AppsGalleryModel? model = await datasource.getApp();
    return model;
  }

  @override
  Future<List<AppsGalleryModel>?> getApps() async {
    try {
      return await datasource.getApps();
    } catch (e) {
      debugPrint('Error in repo impl while trying to getApps: $e');
      return null;
    }
  }
}
