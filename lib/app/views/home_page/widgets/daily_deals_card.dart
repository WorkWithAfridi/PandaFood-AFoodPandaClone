import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DailyDealsCard extends StatelessWidget {
  const DailyDealsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        width: Get.width / 3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2F3d%2F4b%2F10%2F3d4b1039e621d66577c9fc9507a17c52.jpg&f=1&nofb=1",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
