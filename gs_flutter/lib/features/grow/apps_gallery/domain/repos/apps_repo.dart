import 'package:god_sufficient/features/grow/apps_gallery/data/models/apps_gallery_model.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/entities/app_entity.dart';

abstract class AppsRepo {
  Future<AppEntity?> getApp();
  Future<List<AppsGalleryModel>?> getApps();
}
