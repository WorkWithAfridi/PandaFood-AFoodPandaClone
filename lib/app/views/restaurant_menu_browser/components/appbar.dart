import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../data/constants/colors.dart';

class RestaurantMenuBrowserAppbar extends StatelessWidget {
  const RestaurantMenuBrowserAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250,
      pinned: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Delivery",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          Text(
            "15 min",
            style: TextStyle(
              fontSize: 12,
              color: darkPink,
            ),
          ),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 200,
                width: double.maxFinite,
                child: Image.network(
                  "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=999&q=80",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Align(
                child: Container(
                  height: 100,
                  width: double.maxFinite,
                  color: lightPink,
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NOON50 to get Tk.50 off on orders over Tk.275 | NOON95 to get Tk.95 off on orders over Tk.549 ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: darkPink,
                            ),
                          ),
                          Text(
                            '*T&C Apply',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: darkPink,
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: SizedBox(
                          width: Get.width / 8,
                          height: 40,
                          child: SvgPicture.asset(
                            'assets/svgs/food.svg',
                            color: darkPink,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              FontAwesomeIcons.arrowLeft,
              color: darkPink,
              size: 15,
            ),
          ),
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.person_add,
            color: darkPink,
            size: 15,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.share,
              color: darkPink,
              size: 15,
            ),
          ),
        ),
      ],
    );
  }
}
