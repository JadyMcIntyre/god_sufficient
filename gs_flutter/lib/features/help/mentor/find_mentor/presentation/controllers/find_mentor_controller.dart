import 'package:get/get.dart';
import 'package:god_sufficient/features/help/mentor/find_mentor/domain/entities/mentor_gallery_item.dart';

import '../../../../../../core/widgets/selected_mentor.dart';
import '../../domain/use_cases/get_mentor.dart';

class FindMentorController extends GetxController {
  final GetMentorUseCase useCase;

  FindMentorController({required this.useCase});

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
      () => SelectedMentor(
        name: mentors[index].name,
        expertise: mentors[index].expertise,
      ),
    );
  }

  void getMentors() async {
    var response = await useCase.call();
    var x = response?.mentors;
    print(x);
    var y = x?.first;
    print(y);
    var z = y?.name;
    print(z);
    if (response?.mentors?.isNotEmpty ?? false) {
      var name = response!.mentors!.first.name;
      print(name);
    } else {
      print('fail');
    }
  }
}
