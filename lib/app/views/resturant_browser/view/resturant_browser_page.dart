import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pandafood/app/views/resturant_browser/controller/controller.dart';

import '../../../../data/demo_data/demo_data.dart';
import '../components/appbar.dart';
import '../components/category_and_menu_items.dart';
import '../widgets/menu_category_list.dart';
import '../components/resturant_info.dart';

class ResturantBrowserPage extends StatefulWidget {
  const ResturantBrowserPage({Key? key}) : super(key: key);

  @override
  State<ResturantBrowserPage> createState() => _ResturantBrowserPageState();
}

class _ResturantBrowserPageState extends State<ResturantBrowserPage> {
  final ResturantBrowserController controller = Get.find();
  
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
          ResturantBrowserAppbar(),
          ResturantBrowserResturantInformation(),
          SliverPersistentHeader(
            delegate: ResturantBrowserMenuCategories(
              // onChanged: controller
              //     .updateResturantBrowserPageScrollPositionOnMenuCategoryChange,
            ),
            pinned: true,
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          ResturantBrowserCategoryAndMenuItems()
        ],
      ),
    );
  }
}
