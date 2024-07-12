import 'package:god_sufficient/features/help/mentor/find_mentor/domain/entities/mentors_entity.dart';

import '../entities/mentor_entity.dart';

abstract class MentorRepository {
  Future<MentorEntity?> getMentor();
  Future<MentorsEntity?> getMentors();
}
