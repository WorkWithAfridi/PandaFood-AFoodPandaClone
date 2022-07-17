import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandafood/app/views/home_page/view/homepage.dart';
import 'package:pandafood/app/views/restaurant_menu_browser/view/restaurant_menu_browser_page.dart';

import 'app/views/restaurant_menu_browser/binding/binding.dart';

void main() {
  runApp(FoodpandaClone());
}

class FoodpandaClone extends StatelessWidget {
  const FoodpandaClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      smartManagement: SmartManagement.onlyBuilder,
    );
  }
}
