import 'package:god_sufficient/features/grow/apps_gallery/data/models/apps_gallery_model.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/entities/apps_gallery_entity.dart';

abstract class AppsGalleryRepo {
  Future<AppsGalleryEntity?> getApp();
  Future<List<AppsGalleryModel>?> getApps();
}
