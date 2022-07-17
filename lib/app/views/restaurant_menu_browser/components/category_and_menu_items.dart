import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../data/demo_data/demo_data.dart';
import '../../../../data/model/resturant_menu_item.dart';
import '../widgets/menu_item_card.dart';

class CategoryAndMenuItems extends StatelessWidget {
  const CategoryAndMenuItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: demoRestaurantMenuCategoryList.length,
        (context, index) {
          List<ResturantMenuItem> items =
              demoRestaurantMenuCategoryList[index].items;
          return Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  // height: index == 0 ? 15 : 5,
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          index == 0
                              ? Row(
                                  children: const [
                                    Icon(
                                      FontAwesomeIcons.fire,
                                      size: 20,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                  ],
                                )
                              : const SizedBox.shrink(),
                          Text(
                            demoRestaurantMenuCategoryList[index].categoryName,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black.withOpacity(.8),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ...List.generate(
                  items.length,
                  (menuItemIndex) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: MenuItemCard(
                            image: items[menuItemIndex].image,
                            title: items[menuItemIndex].title,
                            price: items[menuItemIndex].price,
                          ),
                        ),
                        menuItemIndex == items.length - 1
                            ? Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 6,
                                    width: Get.width,
                                    color: const Color(0xffF7F7F7),
                                  ),
                                ],
                              )
                            : Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 25,
                                  vertical: 10,
                                ),
                                child: Container(
                                  height: 1,
                                  width: Get.width,
                                  color: Colors.black.withOpacity(.05),
                                ),
                              )
                      ],
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
