// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable
import 'package:flutter/material.dart';
import 'package:meditation_app/core/constants/assets_paths.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/constants/theme/app_text_styles.dart';
import 'package:meditation_app/core/shared_widgets/cards/category_card.dart';
import 'package:meditation_app/core/utils/screen_size.dart';

class ChooseTopicBody extends StatelessWidget {
  const ChooseTopicBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bigHeight = ScreenSize().dynamicHeight(.25);
    double smallHeight = ScreenSize().dynamicHeight(.2);
    ScreenSize().screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(ScreenSize().dynamicWidth(.05)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What Brings you',
                style: AppTextStyles.helveticaNeue28px700,
              ),
              Text(
                'to Silent Moon?',
                style: AppTextStyles.helveticaNeue28px300,
              ),
              Text(
                'choose a topic to focuse on:',
                style: AppTextStyles.helveticaNeue20px300
                    .copyWith(color: AppColors.greyTextColor),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: ScreenSize().dynamicHeight(.14)),
            child: ListView(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CardCategory(
                            svgSrc: AssetsPath().category1SVG,
                            title: 'Reduce Stress',
                            color: AppColors.purpleButtonColor,
                            textColor: AppColors.whiteColor, size: bigHeight,),
                        CardCategory(
                            svgSrc: AssetsPath().category3SVG,
                            title: 'Increase Happiness',
                            color: AppColors.yellowTextColor,
                            textColor: AppColors.blackColor, size: smallHeight,),
                        CardCategory(
                            svgSrc: AssetsPath().category5SVG,
                            title: 'Personal Growth',
                            color: AppColors.greenColor,
                            textColor: AppColors.whiteColor, size: bigHeight,),
                        CardCategory(
                            svgSrc: AssetsPath().category2SVG,
                            title: 'Improve Performance',
                            color: AppColors.redColor,
                            textColor: AppColors.whiteColor, size: smallHeight,),
                      ],
                    ),
                    Column(
                      children: [
                        CardCategory(
                            svgSrc: AssetsPath().category2SVG,
                            title: 'Improve Performance',
                            color: AppColors.redColor,
                            textColor: AppColors.whiteColor, size: smallHeight,),
                        CardCategory(
                            svgSrc: AssetsPath().category4SVG,
                            title: 'Reduce Anxiety',
                            color: AppColors.orange,
                            textColor: AppColors.blackColor, size: bigHeight,),
                        CardCategory(
                            svgSrc: AssetsPath().category6SVG,
                            title: 'Better Sleep',
                            color: AppColors.blackColor,
                            textColor: AppColors.whiteColor, size: smallHeight,),
                        CardCategory(
                            svgSrc: AssetsPath().category1SVG,
                            title: 'Reduce Stress',
                            color: AppColors.purpleButtonColor,
                            textColor: AppColors.whiteColor, size: bigHeight,),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
