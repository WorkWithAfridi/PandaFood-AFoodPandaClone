import 'package:get/get.dart';
import 'package:pandafood/app/views/resturant_browser/controller/controller.dart';

class ResturantBrowserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResturantBrowserController());
  }
}
