import 'package:god_sufficient/features/help/mentor/find_mentor/data/data_sources/remote/mentor_datasource.dart';
import 'package:god_sufficient/features/help/mentor/find_mentor/data/models/mentors_model.dart';
import 'package:god_sufficient/features/help/mentor/find_mentor/domain/entities/mentors_entity.dart';
import 'package:god_sufficient/features/help/mentor/find_mentor/domain/repositories/mentor_repository.dart';

import '../../domain/entities/mentor_entity.dart';
import '../models/mentor_model.dart';

class MentorRepositoryImpl extends MentorRepository {
  final MentorDatasource datasource;

  MentorRepositoryImpl(this.datasource);

  @override
  Future<MentorEntity?> getMentor() async {
    MentorModel? model = await datasource.getMentor();
    return model;
  }

  @override
  Future<MentorsEntity?> getMentors() async {
    MentorsModel? model = await datasource.getMentors();
    return model;
  }
}
