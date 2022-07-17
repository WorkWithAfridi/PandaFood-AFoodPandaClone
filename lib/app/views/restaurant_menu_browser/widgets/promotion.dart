import 'package:flutter/material.dart';

import '../../../../data/constants/colors.dart';

class RestaurantPromotion extends StatelessWidget {
  const RestaurantPromotion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 70,
        width: double.maxFinite,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: deepDarkPink,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "10% OFF",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Text(
                "Enjoy 10% Off on Full Menu on Orders Above TK 200",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ]),
      ),
    );
  }
}
