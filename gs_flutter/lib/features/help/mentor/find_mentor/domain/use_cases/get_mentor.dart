import 'package:god_sufficient/core/use_cases/use_case.dart';
import 'package:god_sufficient/features/help/mentor/find_mentor/domain/entities/mentors_entity.dart';
import 'package:god_sufficient/features/help/mentor/find_mentor/domain/repositories/mentor_repository.dart';

import '../entities/mentor_entity.dart';

class GetMentorUseCase implements UseCase<MentorEntity?, void> {
  final MentorRepository _repository;

  GetMentorUseCase(this._repository);

  @override
  Future<MentorEntity?> call({void params}) {
    return _repository.getMentors();
  }
}
