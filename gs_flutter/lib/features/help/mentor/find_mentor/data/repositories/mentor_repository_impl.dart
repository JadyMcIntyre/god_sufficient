import 'package:god_sufficient/features/help/mentor/find_mentor/data/data_sources/remote/mentor_datasource.dart';
import 'package:god_sufficient/features/help/mentor/find_mentor/domain/repositories/mentor_repository.dart';

import '../../domain/entities/mentors_entity.dart';
import '../models/mentors_model.dart';

class MentorRepositoryImpl extends MentorRepository {
  final MentorDatasource datasource;
  MentorRepositoryImpl(this.datasource);
  @override
  Future<MentorsEntity?> getMentors() async {
    MentorsModel? model = await datasource.getMentors();
    return model?.toEntity();
  }
}
