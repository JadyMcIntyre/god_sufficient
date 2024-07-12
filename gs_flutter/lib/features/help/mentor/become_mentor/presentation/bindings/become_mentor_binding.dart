import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';

import '../controllers/become_mentor_controller.dart';

class BecomeMentorBinding extends Bindings {
  KiwiContainer container = KiwiContainer();

  @override
  void dependencies() {
    Get.lazyPut<BecomeMentorController>(() => container.resolve<BecomeMentorController>());
  }
}
