// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/core/constants/assets_paths.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/constants/theme/app_text_styles.dart';
import 'package:meditation_app/core/utils/screen_size.dart';

class CourseDetailsBody extends StatelessWidget {
  const CourseDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize().screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SvgPicture.asset(AssetsPath().courseDetailsSunSVG),
            Padding(
              padding:  EdgeInsets.only(left: ScreenSize().dynamicWidth(.05),top: ScreenSize().dynamicHeight(.05)),
              child: Row(
                children: [
                  SvgPicture.asset(AssetsPath().backButtonSVG,),
                  SizedBox(width: ScreenSize().dynamicWidth(.62),),
                  SvgPicture.asset(AssetsPath().courseDetailsDownloadSVG,),
                  
                ],
              ),
            ),
         
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              Text('Happy Morning',style:AppTextStyles.helveticaNeue34px700 ,),
              Text('COURSE',style:AppTextStyles.helveticaNeue14px400.copyWith(color: AppColors.greyColor) ,),
              Padding(
                padding:  EdgeInsets.only(top: ScreenSize().dynamicHeight(.02),bottom: ScreenSize().dynamicHeight(.02)),
                child: Text('Ease the mind into a restful night’s sleep with these deep, amblent tones.',style:AppTextStyles.helveticaNeue16px300.copyWith(color: AppColors.greyColor) ,),
              ),
            
            Row(
              children: [
                SvgPicture.asset(AssetsPath().courseDetailsFavoritsSVG),
                Padding(
                  padding:  EdgeInsets.only(left: ScreenSize().dynamicWidth(.02),right: ScreenSize().dynamicWidth(.2)),
                  child: Text('24.234 Favorits',style: AppTextStyles.helveticaNeue14px400.copyWith(color: AppColors.greyColor),),
                ),
                SvgPicture.asset(AssetsPath().courseDetailsListeningSVG),
                Padding(
                  padding:  EdgeInsets.only(left:ScreenSize().dynamicWidth(.02) ),
                  child: Text('34.234 Listening',style: AppTextStyles.helveticaNeue14px400.copyWith(color: AppColors.greyColor),),
                ),
              ],
            )
            
            
            ],
          ),
        )
      ],
    );
  }
}
