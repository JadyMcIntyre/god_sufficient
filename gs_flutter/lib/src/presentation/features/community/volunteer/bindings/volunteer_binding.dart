import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';

import '../controllers/volunteer_controller.dart';

class VolunteerBinding extends Bindings {
  KiwiContainer container = KiwiContainer();

  @override
  void dependencies() {
    Get.lazyPut<VolunteerController>(
      () => container.resolve<VolunteerController>(),
    );
  }
}
