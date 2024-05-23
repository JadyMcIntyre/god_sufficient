import 'package:get/get.dart';
import 'package:god_sufficient/features/mentor/domain/entities/mentor_entity.dart';
import 'package:god_sufficient/src/data/models/mentor_gallery_item.dart';
import 'package:god_sufficient/src/presentation/widgets/selected_mentor.dart';

import '../../../../../../../features/mentor/domain/use_cases/get_mentor.dart';

class FindMentorController extends GetxController {
  final GetMentorUseCase _useCase;
  FindMentorController(this._useCase);
  List<MentorGalleryItem> mentors = [
    MentorGalleryItem(
      'Ivan',
      'Got saved from 20 year drug addiction',
      'Addiction',
      'imagePath',
    ),
  ];

  void onTap(int index) {
    Get.to(
      SelectedMentor(
        name: mentors[index].name,
        expertise: mentors[index].expertise,
      ),
    );
  }

  Future<MentorEntity?> getMentor() async {
    return await _useCase.call();
  }
}
