import 'package:get/get.dart';
import 'package:god_sufficient/features/help/mentor/find_mentor/domain/entities/mentor_gallery_item.dart';

import '../../../../../../core/widgets/selected_mentor.dart';

class FindMentorController extends GetxController {
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
}