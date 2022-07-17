import 'package:get/get.dart';

import '../controller/controller.dart';

class ResturantMenuBrowserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResturantMenuBrowserController());
  }
}
