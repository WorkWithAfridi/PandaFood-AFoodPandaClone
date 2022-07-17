import 'package:flutter/material.dart';

import '../widgets/your_restaurant_card.dart';

class YourRestaurantTab extends StatelessWidget {
  const YourRestaurantTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Your Restaurants",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 6,
                    ),
                    ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (
                        context,
                        index,
                      ) {
                        return YouRestaurantCard();
                      },
                    ),
                    const SizedBox(
                      width: 16,
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
