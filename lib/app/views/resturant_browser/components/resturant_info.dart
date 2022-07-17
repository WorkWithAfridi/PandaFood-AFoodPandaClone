import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../data/constants/colors.dart';
import '../widgets/promotion.dart';
import 'recent_orders.dart';

class ResturantBrowserResturantInformation extends StatefulWidget {
  const ResturantBrowserResturantInformation({
    Key? key,
  }) : super(key: key);

  @override
  State<ResturantBrowserResturantInformation> createState() =>
      _ResturantBrowserResturantInformationState();
}

class _ResturantBrowserResturantInformationState
    extends State<ResturantBrowserResturantInformation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      height: 310,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Flexible(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Some Resturant Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "0.3km away | Tk 50 Minimum",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(.5),
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: deepDarkPink,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: deepDarkPink,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: deepDarkPink,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: deepDarkPink,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: deepDarkPink,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "100+ ratings",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(.5),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'More info',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: deepDarkPink,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.clock,
                      color: deepDarkPink,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Delivery: 15 min',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Change',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.5),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ResturantBrowserPromotion(),
          const SizedBox(
            height: 10,
          ),
          ResturantBrowserRecentOrders(),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    ));
  }
}
