import 'package:god_sufficient/features/grow/apps_gallery/data/models/apps_gallery_model.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/entities/app_gallery_entity.dart';

abstract class AppGalleryRepo {
  Future<AppGalleryEntity?> getApp();
  Future<List<AppsGalleryModel>?> getApps();
}
