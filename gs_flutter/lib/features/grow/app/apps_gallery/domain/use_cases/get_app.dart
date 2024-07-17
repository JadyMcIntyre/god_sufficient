import 'package:god_sufficient/features/grow/app/apps_gallery/data/models/app_model.dart';
import 'package:god_sufficient/features/grow/app/apps_gallery/domain/entities/app_entity.dart';
import 'package:god_sufficient/features/grow/app/apps_gallery/domain/repos/apps_repo.dart';

class GetAppUseCase {
  final AppsRepo _repository;

  GetAppUseCase(this._repository);

  Future<AppEntity?> getApp({void params}) {
    return _repository.getApp();
  }

  Future<List<AppModel>?> getApps({void params}) {
    return _repository.getApps();
  }
}
