import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/demo_data/demo_data.dart';

class RestaurantMenuBrowserController extends GetxController {
  var selectedMenuCategory = 0.obs;
  var restaurantBrowserPageScrollController = ScrollController().obs;
  var restaurantBrowserMenuCategoryScrollController = ScrollController().obs;
  List breakpointsInBetweenCategories = [];
  double appBarAndRestaurantInfoHeight = 310 + 250 - kToolbarHeight;

  createBreakpointsInBetweenMenuItemCategories() {
    double firstBreakpoint = appBarAndRestaurantInfoHeight +
        45 +
        (120 * demoRestaurantMenuCategoryList[0].items.length);
    breakpointsInBetweenCategories.add(firstBreakpoint);
    for (var i = 1; i < demoRestaurantMenuCategoryList.length; i++) {
      double bp = breakpointsInBetweenCategories.last +
          45 +
          (120 * demoRestaurantMenuCategoryList[i].items.length);
      breakpointsInBetweenCategories.add(bp);
    }
  }

  updateMenuCategoryOnRestaurantBrowserPageScroll(double offset) {
    for (var i = 0; i < demoRestaurantMenuCategoryList.length; i++) {
      if (i == 0) {
        if ((offset < breakpointsInBetweenCategories.first) &
            (selectedMenuCategory.value != 0)) {
          selectedMenuCategory.value = 0;
        }
      } else if ((breakpointsInBetweenCategories[i - 1] <= offset) &
          (offset < breakpointsInBetweenCategories[i])) {
        if (selectedMenuCategory.value != i) {
          selectedMenuCategory.value = i;
        }
      }
      restaurantBrowserMenuCategoryScrollController.value.animateTo(
        60.0 * selectedMenuCategory.value,
        curve: Curves.ease,
        duration: const Duration(milliseconds: 200),
      );
    }
  }

  updateRestaurantBrowserPageScrollPositionOnMenuCategoryChange(int index) {
    if (selectedMenuCategory.value != index) {
      int totalItemsInThatCategory = 0;
      for (var i = 0; i < index; i++) {
        totalItemsInThatCategory +=
            demoRestaurantMenuCategoryList[i].items.length;
      }
      //120 = menuItemCard +v padding
      // 45 = text size + v padding
      restaurantBrowserPageScrollController.value.animateTo(
        appBarAndRestaurantInfoHeight +
            (120 * totalItemsInThatCategory) +
            10 +
            (45 * index) +
            (18 * index),
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
      );
      selectedMenuCategory.value = index;
    }
  }
}
