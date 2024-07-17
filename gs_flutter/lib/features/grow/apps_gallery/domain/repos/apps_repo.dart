import 'package:god_sufficient/features/grow/apps_gallery/data/models/app_model.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/entities/app_entity.dart';

abstract class AppsRepo {
  Future<AppEntity?> getApp();
  Future<List<AppModel>?> getApps();
}
