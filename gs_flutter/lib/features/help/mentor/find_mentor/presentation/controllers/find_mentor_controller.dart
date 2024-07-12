import 'package:get/get.dart';
import 'package:god_sufficient/features/help/mentor/find_mentor/domain/entities/mentor_gallery_item.dart';

import '../../domain/use_cases/get_mentor.dart';

class FindMentorController extends GetxController {
  final GetMentorUseCase useCase;

  FindMentorController({required this.useCase});

  List<MentorGalleryItem> mentors = [
    MentorGalleryItem('Ivan', 'Got saved from 20 year drug addiction', 'Addiction', 'imagePath'),
  ];

  void onTap(int index) async {
    await getMentors();
    // Get.to(() => SelectedMentor(name: mentors[index].name, expertise: mentors[index].expertise));
  }

  Future<void> getMentor() async {
    var response = await useCase.getMentor();
    if (response != null) {
      var id = response?.id.toString();
      var name = response?.name;
      var expertise = response?.expertise;
      var description = response?.description;
      print('found: id: $id, name: $name, expertise: $expertise, description: $description');
    } else {
      print('null');
    }
  }

  Future<void> getMentors() async {
    var response = await useCase.getMentors();
    if (response != null) {
      var mentors = response.mentors;
      var x = mentors?[0].name;
      var y = mentors?.last.name;

      print('found first: $x, found last: $y');
    } else {
      print('null');
    }
  }
}
