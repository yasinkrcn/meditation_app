// ignore_for_file: camel_case_types, prefer_const_constructors, unused_local_variable
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/core/constants/theme/app_decoration.dart';
import 'package:meditation_app/core/constants/theme/app_text_styles.dart';
import 'package:meditation_app/core/utils/screen_size.dart';

class CardCategory extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Color color;
  final Color textColor;
  final double size;

  const CardCategory({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.color,
    required this.textColor,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size,
        width: ScreenSize().dynamicWidth(.4),
        decoration: BoxDecoration(
          borderRadius: AppDecoration.borderRadius10,
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              svgSrc,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: ScreenSize().dynamicWidth(.03),
                bottom: ScreenSize().dynamicHeight(.013),
              ),
              child: Text(
                title,
                maxLines: 2,
                style: AppTextStyles.helveticaNeue18px700
                    .copyWith(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
