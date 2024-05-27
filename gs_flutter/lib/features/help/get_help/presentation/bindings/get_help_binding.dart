import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';

import '../controllers/get_help_controller.dart';

class GetHelpBinding extends Bindings {
  KiwiContainer container = KiwiContainer();

  @override
  void dependencies() {
    Get.lazyPut<GetHelpController>(
      () => container.resolve<GetHelpController>(),
    );
  }
}
