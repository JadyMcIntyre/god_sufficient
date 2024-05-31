import 'package:god_sufficient/features/help/mentor/find_mentor/domain/entities/mentors_entity.dart';

abstract class MentorRepository {
  Future<MentorsEntity?> getMentors();
}
