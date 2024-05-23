import 'package:god_sufficient/features/mentor/data/data_sources/remote/mentor_datasource.dart';
import 'package:god_sufficient/features/mentor/data/models/mentor_model.dart';
import 'package:god_sufficient/features/mentor/domain/entities/mentor_entity.dart';
import 'package:god_sufficient/features/mentor/domain/repositories/mentor_repository.dart';

class MentorRepositoryImpl extends MentorRepository {
  final MentorDatasource datasource;
  MentorRepositoryImpl(this.datasource);
  @override
  Future<MentorEntity?> getMentor() async {
    var model = await datasource.getMentor();
    return model?.toEntity();
  }
}
