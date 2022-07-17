import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pandafood/data/constants/colors.dart';

import '../components/app_section_categories.dart';
import '../components/appbar.dart';
import '../components/daily_deals_tab.dart';
import '../components/review_order_tab.dart';
import '../components/your_restaurant_tab.dart';
import '../widgets/your_restaurant_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          HomepageAppbar(),
          AppSectionCategories(),
          YourRestaurantTab(),
          DailyDealsTab(),
          RateOrderTab()
        ],
      ),
    );
  }
}
