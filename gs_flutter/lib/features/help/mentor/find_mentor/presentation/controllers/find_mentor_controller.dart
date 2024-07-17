import 'package:get/get.dart';
import 'package:god_sufficient/features/help/mentor/find_mentor/domain/entities/mentor_gallery_item.dart';

import '../../../../../../core/widgets/selected_mentor.dart';
import '../../domain/use_cases/get_mentor.dart';

class FindMentorController extends GetxController with StateMixin {
  final GetMentorUseCase useCase;

  FindMentorController({required this.useCase});

  List<MentorGalleryItem> mentors = [];

  @override
  void onInit() async {
    super.onInit();
    change(null, status: RxStatus.loading());
  }

  @override
  void onReady() async {
    super.onReady();
    await getMentors();
  }

  void onTap(int index) async {
    Get.to(() => SelectedMentor(name: mentors[index].name, expertise: mentors[index].expertise));
  }

  Future<void> getMentors() async {
    var response = await useCase.getMentors();
    if (response != null) {
      for (var mentor in response) {
        mentors.add(MentorGalleryItem(mentor.name, '', mentor.expertise, 'imagePath'));
      }
      change(null, status: RxStatus.success());
    } else {
      change(null, status: RxStatus.error());
    }
  }
}
