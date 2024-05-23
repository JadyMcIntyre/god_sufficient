import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';

import '../controllers/find_mentor_controller.dart';

class FindMentorBinding extends Bindings {
  KiwiContainer container = KiwiContainer();

  @override
  void dependencies() {
    Get.lazyPut<FindMentorController>(
      () => container.resolve<FindMentorController>(),
    );
  }
}
