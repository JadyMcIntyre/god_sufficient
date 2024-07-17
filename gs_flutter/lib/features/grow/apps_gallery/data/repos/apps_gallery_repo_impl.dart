import 'package:flutter/cupertino.dart';
import 'package:god_sufficient/features/grow/apps_gallery/data/models/apps_gallery_model.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/entities/apps_gallery_entity.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/repos/apps_gallery_repo.dart';

import '../remote_data_source/apps_gallery_datasource.dart';

class AppsGalleryRepoImpl extends AppsGalleryRepo {
  final AppsGalleryDataSource datasource;

  AppsGalleryRepoImpl(this.datasource);

  @override
  Future<AppsGalleryEntity?> getApp() async {
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
