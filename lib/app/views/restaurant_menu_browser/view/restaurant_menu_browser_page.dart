import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/appbar.dart';
import '../components/category_and_menu_items.dart';
import '../controller/controller.dart';
import '../widgets/menu_category_list.dart';
import '../components/restaurant_info.dart';

class RestaurantMenuBrowserPage extends StatefulWidget {
  const RestaurantMenuBrowserPage({Key? key}) : super(key: key);

  @override
  State<RestaurantMenuBrowserPage> createState() =>
      _RestaurantMenuBrowserPageState();
}

class _RestaurantMenuBrowserPageState extends State<RestaurantMenuBrowserPage> {
  final RestaurantMenuBrowserController controller = Get.find();

  @override
  void initState() {
    controller.createBreakpointsInBetweenMenuItemCategories();
    controller.restaurantBrowserPageScrollController.value.addListener(() {
      controller.updateMenuCategoryOnRestaurantBrowserPageScroll(
          controller.restaurantBrowserPageScrollController.value.offset);
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
        controller: controller.restaurantBrowserPageScrollController.value,
        physics: BouncingScrollPhysics(),
        slivers: [
          RestaurantMenuBrowserAppbar(),
          ResturantInformationWithPromotionAndRecentOrders(),
          SliverPersistentHeader(
            delegate: MenuCategories(),
            pinned: true,
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          const CategoryAndMenuItems()
        ],
      ),
    );
  }
}
