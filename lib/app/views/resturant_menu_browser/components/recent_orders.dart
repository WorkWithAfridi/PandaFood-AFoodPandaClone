import 'package:flutter/material.dart';

import '../widgets/recent_order_card.dart';

class ResturantMenuBrowserRecentOrders extends StatelessWidget {
  const ResturantMenuBrowserRecentOrders({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Recent orders',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 12,
              ),
              RecentOrderCard()
            ],
          ),
        )
      ],
    );
  }
}
