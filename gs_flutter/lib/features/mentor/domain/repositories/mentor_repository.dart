import 'package:god_sufficient/features/mentor/domain/entities/mentor_entity.dart';

abstract class MentorRepository {
  Future<MentorEntity?> getMentor();
}
