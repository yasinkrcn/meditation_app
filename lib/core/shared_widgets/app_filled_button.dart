// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/constants/theme/app_decoration.dart';
import 'package:meditation_app/core/constants/theme/app_text_styles.dart';
import 'package:meditation_app/core/utils/screen_size.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton(
      {Key? key,
      required this.buttonText,
      this.buttonSvgImage,
      this.borderColor,
      this.buttonColor,
      this.buttonTextColor})
      : super(key: key);

  final String buttonText;
  final String? buttonSvgImage;
  final Color? borderColor;
  final Color? buttonColor;
  final Color? buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40, left: 30),
      child: Container(
        height: ScreenSize().dynamicHeight(.075),
        width: ScreenSize().dynamicWidth(.85),
        decoration: BoxDecoration(
            borderRadius: AppDecoration.borderRadius38,
            color: buttonColor ?? AppColors.whiteColor,
            border: Border.all(
              width: 1,
              color: borderColor ?? AppColors.borderColor,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonSvgImage != null
                ? SvgPicture.asset(buttonSvgImage!)
                : SizedBox.shrink(),
            Text(
              buttonText,
              style: AppTextStyles.helveticaNeue14px400.copyWith(
                  color: buttonTextColor ?? AppColors.googleFontColor),
            ),
            SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
