import '../../data/models/mentor_model.dart';
import '../entities/mentor_entity.dart';

abstract class MentorRepository {
  Future<MentorEntity?> getMentor();
  Future<List<MentorModel>?> getMentors();
}
