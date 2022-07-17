import 'package:get/get.dart';

import '../controller/controller.dart';

class RestaurantMenuBrowserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestaurantMenuBrowserController());
  }
}
