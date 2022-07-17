import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:lottie/lottie.dart';

class AppSectionCategoryCard extends StatelessWidget {
  const AppSectionCategoryCard({
    Key? key,
    required this.title,
    required this.subtitle,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.onTap,
    this.showAnimation = false,
    this.animationPath = '',
    this.showSvg = false,
    this.svgPath = '',
  }) : super(key: key);

  final String title, subtitle;
  final MainAxisAlignment mainAxisAlignment;
  final Function onTap;
  final bool showAnimation;
  final String animationPath;
  final bool showSvg;
  final String svgPath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.all(16),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.black.withOpacity(.5),
                    height: .95,
                  ),
                ),
                showAnimation
                    ? Expanded(
                        child: Lottie.asset(animationPath, fit: BoxFit.fill),
                      )
                    : SizedBox.shrink(),
                showSvg
                    ? Expanded(
                        child: SvgPicture.asset(svgPath),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
