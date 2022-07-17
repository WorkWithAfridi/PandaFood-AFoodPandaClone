import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandafood/app/views/resturant_browser/binding/binding.dart';

import 'app/views/resturant_browser/view/resturant_browser_page.dart';

void main() {
  runApp(FoodpandaClone());
}

class FoodpandaClone extends StatelessWidget {
  const FoodpandaClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResturantBrowserPage(),
      initialBinding: ResturantBrowserBinding(),
    );
  }
}
