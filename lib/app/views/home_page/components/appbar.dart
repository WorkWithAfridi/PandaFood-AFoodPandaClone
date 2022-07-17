import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../data/constants/colors.dart';

class HomepageAppbar extends StatelessWidget {
  const HomepageAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 110,
      backgroundColor: deepDarkPink,
      pinned: true,
      floating: true,
      elevation: 4,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: CircleAvatar(
          backgroundColor: deepDarkPink,
          child: Icon(
            FontAwesomeIcons.bars,
            color: Colors.white,
            size: 18,
          ),
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "123 Shantibagh Water Pump Ln",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Dhaka",
            style: TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400),
          ),
        ],
      ),
      actions: [
        CircleAvatar(
          backgroundColor: deepDarkPink,
          child: Icon(
            Icons.favorite_outline,
            color: Colors.white,
            size: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: CircleAvatar(
            backgroundColor: deepDarkPink,
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          height: double.maxFinite,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 19,
                      color: Colors.black.withOpacity(.5),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Seach for shops & restaurants',
                      style: TextStyle(
                        color: Colors.black.withOpacity(.5),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
