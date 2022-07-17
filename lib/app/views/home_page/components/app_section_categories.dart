import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandafood/app/views/restaurant_menu_browser/binding/binding.dart';
import 'package:pandafood/app/views/restaurant_menu_browser/view/restaurant_menu_browser_page.dart';

import '../widgets/app_section_category_card.dart';

class AppSectionCategories extends StatelessWidget {
  const AppSectionCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 350,
        padding: EdgeInsets.all(16),
        color: Color(0xffEDF2F5),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Column(
                  children: [
                    Flexible(
                      flex: 3,
                      child: AppSectionCategoryCard(
                        title: "Food delivery",
                        subtitle: "Best deals on your favorites!",
                        onTap: () {
                          Get.to(
                            () => RestaurantMenuBrowserPage(),
                            binding: RestaurantMenuBrowserBinding(),
                          );
                        },
                        showAnimation: true,
                        animationPath: 'assets/lottie/deliveryman.json',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Flexible(
                      flex: 1,
                      child: AppSectionCategoryCard(
                        title: "Dine-in",
                        subtitle: "Exclusive offers for panda members!",
                        mainAxisAlignment: MainAxisAlignment.center,
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Flexible(
              flex: 1,
              child: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Column(
                  children: [
                    Flexible(
                      flex: 2,
                      child: AppSectionCategoryCard(
                        title: "Pandamart",
                        subtitle: "Grocery delivered in 30 mins!",
                        onTap: () {},
                        showSvg: true,
                        svgPath: 'assets/svgs/delivery_cart.svg',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Flexible(
                      flex: 1,
                      child: AppSectionCategoryCard(
                        title: "Shops",
                        subtitle: "Groceries and more...",
                        mainAxisAlignment: MainAxisAlignment.center,
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Flexible(
                      flex: 1,
                      child: AppSectionCategoryCard(
                        title: "Pick-up",
                        subtitle: "Takwaway in 15mins!",
                        mainAxisAlignment: MainAxisAlignment.center,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
