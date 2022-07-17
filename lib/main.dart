import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/views/resturant_menu_browser/binding/binding.dart';
import 'app/views/resturant_menu_browser/view/resturant_menu_browser_page.dart';
void main() {
  runApp(FoodpandaClone());
}

class FoodpandaClone extends StatelessWidget {
  const FoodpandaClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResturantMenuBrowserPage(),
      initialBinding: ResturantMenuBrowserBinding(),
    );
  }
}
