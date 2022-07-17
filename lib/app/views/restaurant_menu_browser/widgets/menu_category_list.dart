import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/constants/colors.dart';
import '../../../../data/demo_data/demo_data.dart';
import '../controller/controller.dart';

class MenuCategories extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 36,
      color: Colors.white,
      child: MenuCategoryList(),
    );
  }

  @override
  double get maxExtent => 36;

  @override
  double get minExtent => 36;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class MenuCategoryList extends StatelessWidget {
  MenuCategoryList({Key? key}) : super(key: key);
  final RestaurantMenuBrowserController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          controller:
              controller.restaurantBrowserMenuCategoryScrollController.value,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 6,
              ),
              ...List.generate(
                demoRestaurantMenuCategoryList.length,
                (index) => GestureDetector(
                  onTap: () {
                    controller
                        .updateRestaurantBrowserPageScrollPositionOnMenuCategoryChange(
                            index);
                  },
                  child: Obx(
                    () => Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 2,
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                              ),
                              child: Text(
                                demoRestaurantMenuCategoryList[index]
                                    .categoryName,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color:
                                      controller.selectedMenuCategory.value ==
                                              index
                                          ? Colors.black
                                          : Colors.black.withOpacity(.5),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            controller.selectedMenuCategory.value == index
                                ? Container(
                                    height: 4,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: deepDarkPink,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  )
                                : SizedBox.shrink(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
