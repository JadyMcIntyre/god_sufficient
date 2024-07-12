import 'package:god_sufficient/features/help/mentor/find_mentor/domain/repositories/mentor_repository.dart';

import '../../data/models/mentor_model.dart';
import '../entities/mentor_entity.dart';

class GetMentorUseCase {
  final MentorRepository _repository;

  GetMentorUseCase(this._repository);

  Future<MentorEntity?> getMentor({void params}) {
    return _repository.getMentor();
  }

  Future<List<MentorModel>?> getMentors({void params}) {
    return _repository.getMentors();
  }
}
