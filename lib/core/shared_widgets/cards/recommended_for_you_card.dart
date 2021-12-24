import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/core/constants/assets_paths.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/constants/theme/app_decoration.dart';
import 'package:meditation_app/core/constants/theme/app_text_styles.dart';
import 'package:meditation_app/core/utils/screen_size.dart';

class RecommendedForYou extends StatelessWidget {
  final String svgSrc;
  final Color color;
  final String title;
  const RecommendedForYou({Key? key,required this.svgSrc,required this.color,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: ScreenSize().dynamicWidth(.04)),
      child: ClipRRect(
        borderRadius: AppDecoration.borderRadius10,
        child: Container(
          height: ScreenSize().dynamicHeight(.25),
          width: ScreenSize().dynamicWidth(.465),
          color: AppColors.whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: AppDecoration.borderRadius10,
                child: Container(
                  child: SvgPicture.asset(svgSrc),
                  height: ScreenSize().dynamicHeight(.17),
                  width: ScreenSize().dynamicWidth(.5),
                  color: color,
                ),
              ),
              Text(title, style: AppTextStyles.helveticaNeue18px700),
              const Text('MEDITATION 3-10 MIN',
                  style: AppTextStyles.helveticaNeue11px400),
              
            ],
          ),
        ),
        
      ),
    );
    
  }
}
