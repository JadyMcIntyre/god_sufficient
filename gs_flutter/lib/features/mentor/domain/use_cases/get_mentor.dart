import 'package:god_sufficient/core/use_cases/use_case.dart';
import 'package:god_sufficient/features/mentor/domain/entities/mentor_entity.dart';
import 'package:god_sufficient/features/mentor/domain/repositories/mentor_repository.dart';

class GetMentorUseCase implements UseCase<MentorEntity?, void> {
  final MentorRepository _repository;
  GetMentorUseCase(this._repository);
  @override
  Future<MentorEntity?> call({void params}) {
    return _repository.getMentor();
  }
}
