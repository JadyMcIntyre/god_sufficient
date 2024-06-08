import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  KiwiContainer container = KiwiContainer();

  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => container.resolve<LoginController>(),
    );
  }
}
