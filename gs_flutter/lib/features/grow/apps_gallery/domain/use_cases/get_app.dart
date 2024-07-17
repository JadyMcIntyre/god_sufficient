import 'package:god_sufficient/features/grow/apps_gallery/data/models/apps_gallery_model.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/entities/app_entity.dart';
import 'package:god_sufficient/features/grow/apps_gallery/domain/repos/apps_repo.dart';

class GetAppUseCase {
  final AppsRepo _repository;

  GetAppUseCase(this._repository);

  Future<AppEntity?> getApp({void params}) {
    return _repository.getApp();
  }

  Future<List<AppsGalleryModel>?> getApps({void params}) {
    return _repository.getApps();
  }
}
