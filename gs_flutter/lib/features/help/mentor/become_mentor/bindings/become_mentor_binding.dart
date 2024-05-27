import 'package:get/get.dart';

import '../controllers/become_mentor_controller.dart';


class BecomeMentorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BecomeMentorController>(
      () => BecomeMentorController(),
    );
  }
}
