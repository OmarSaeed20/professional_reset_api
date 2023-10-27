import 'package:get/get.dart';

import 'controller.dart';

class OkBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController(Get.find()));
  }
}
