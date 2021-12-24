// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/core/constants/assets_paths.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/constants/theme/app_decoration.dart';
import 'package:meditation_app/core/constants/theme/app_text_styles.dart';
import 'package:meditation_app/core/shared_widgets/cards/home_card_one.dart';
import 'package:meditation_app/core/shared_widgets/cards/recommended_for_you_card.dart';
import 'package:meditation_app/core/utils/screen_size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(ScreenSize().dynamicHeight(.025)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning, Afsar',
              style: AppTextStyles.helveticaNeue28px700,
            ),
            Text(
              'We wish you have a good day',
              style: AppTextStyles.helveticaNeue20px300
                  .copyWith(color: AppColors.greyColor),
            ),
            Row(
              children: [
                HomeCardOne(
                    svgSrc: AssetsPath().home1SVG,
                    titleOne: 'Basics',
                    titleTwo: 'COURSE',
                    time: '3-10 MIN',
                    backgColor: AppColors.purpleButtonColor,
                    buttonColor: AppColors.whiteColor,
                    textColor: AppColors.whiteColor,
                    buttonTextColor: AppColors.blackColor),
                HomeCardOne(
                    svgSrc: AssetsPath().home1SVG,
                    titleOne: 'Relaxation',
                    titleTwo: 'MUSİC',
                    time: '3-10 MIN',
                    backgColor: AppColors.greenColor,
                    buttonColor: AppColors.whiteColor,
                    textColor: AppColors.whiteColor,
                    buttonTextColor: AppColors.blackColor),
              ],
            ),
            DailyThought(),
            Text(
              'Recommended for you',
              style: AppTextStyles.helveticaNeue24px400,
            ),
            Container(
              height: ScreenSize().dynamicHeight(.23),
              margin: EdgeInsets.only(top: ScreenSize().dynamicHeight(.012)),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RecommendedForYou(
                      svgSrc: AssetsPath().home4SVG,
                      color: AppColors.blackColor,
                      title: 'Focus'),
                  RecommendedForYou(
                      svgSrc: AssetsPath().home5SVG,
                      color: AppColors.yellowTextColor,
                      title: 'Happiness'),
                  RecommendedForYou(
                      svgSrc: AssetsPath().home5SVG,
                      color: AppColors.greenColor,
                      title: 'Focus'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationItems(),
          BottomNavigationItems(),
          BottomNavigationItems(),
          BottomNavigationItems(),
          BottomNavigationItems(),
          
        ],
      ),
    );
  }

  BottomNavigationBarItem BottomNavigationItems() {
    return BottomNavigationBarItem(

            icon: Container(
              height: ScreenSize().dynamicHeight(.045),
              width: ScreenSize().dynamicWidth(.09),
              child: Padding(
                padding: EdgeInsets.all(ScreenSize().dynamicHeight(.01)),
                child: SvgPicture.asset(
                  AssetsPath().bottomHomeSVG,
                  color: AppColors.whiteColor,
                  fit: BoxFit.contain,
                ),
              ),
              decoration: BoxDecoration(
                  color: AppColors.purpleButtonColor,
                  borderRadius: AppDecoration.borderRadius10),
            ),
            label: 'Home',
            backgroundColor: AppColors.greyHintTextColor);
  }
}

class DailyThought extends StatelessWidget {
  const DailyThought({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: ScreenSize().dynamicHeight(.02),
          bottom: ScreenSize().dynamicHeight(.02)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: AppColors.darkPurpleColor,
          height: ScreenSize().dynamicHeight(.115),
          width: ScreenSize().dynamicWidth(.9),
          child: Stack(
            children: [
              SvgPicture.asset(AssetsPath().home3SVG),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: ScreenSize().dynamicWidth(.05),
                        top: ScreenSize().dynamicHeight(.02),
                        bottom: ScreenSize().dynamicHeight(.02),
                        right: ScreenSize().dynamicWidth(.38)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Daily Thought',
                          style: AppTextStyles.helveticaNeue18px700
                              .copyWith(color: AppColors.whiteColor),
                        ),
                        Text(
                          'MEDITATION 3-10 MIN',
                          style: AppTextStyles.helveticaNeue11px400
                              .copyWith(color: AppColors.whiteColor),
                        )
                      ],
                    ),
                  ),
                  SvgPicture.asset(AssetsPath().homePlayButtonSVG)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
