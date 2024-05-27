import 'package:get/get.dart';

import '../controllers/find_mentor_controller.dart';

class FindMentorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FindMentorController>(
      () => FindMentorController(),
    );
  }
}
