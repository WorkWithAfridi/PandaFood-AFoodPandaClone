import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/appbar.dart';
import '../components/category_and_menu_items.dart';
import '../controller/controller.dart';
import '../widgets/menu_category_list.dart';
import '../components/resturant_info.dart';

class ResturantMenuBrowserPage extends StatefulWidget {
  const ResturantMenuBrowserPage({Key? key}) : super(key: key);

  @override
  State<ResturantMenuBrowserPage> createState() => _ResturantMenuBrowserPageState();
}

class _ResturantMenuBrowserPageState extends State<ResturantMenuBrowserPage> {
  final ResturantMenuBrowserController controller = Get.find();
  
  @override
  void initState() {
    controller.createBreakpointsInBetweenMenuItemCategories();
    controller.resturantBrowserPageScrollController.value.addListener(() {
      controller.updateMenuCategoryOnResturantBrowserPageScroll(
          controller.resturantBrowserPageScrollController.value.offset);
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: controller.resturantBrowserPageScrollController.value,
        slivers: [
          ResturantMenuBrowserAppbar(),
          ResturantMenuBrowserResturantInformation(),
          SliverPersistentHeader(
            delegate: ResturantMenuBrowserMenuCategories(
              // onChanged: controller
              //     .updateResturantBrowserPageScrollPositionOnMenuCategoryChange,
            ),
            pinned: true,
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          ResturantMenuBrowserCategoryAndMenuItems()
        ],
      ),
    );
  }
}
