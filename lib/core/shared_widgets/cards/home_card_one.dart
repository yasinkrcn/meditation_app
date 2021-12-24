import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/constants/theme/app_decoration.dart';
import 'package:meditation_app/core/constants/theme/app_text_styles.dart';
import 'package:meditation_app/core/utils/screen_size.dart';

class HomeCardOne extends StatelessWidget {
  final String svgSrc;
  final String titleOne;
  final String titleTwo;
  final String time;
  final Color backgColor;
  final Color buttonColor;
  final Color textColor;
  final Color buttonTextColor;

  const HomeCardOne(
      {Key? key,
      required this.svgSrc,
      required this.titleOne,
      required this.titleTwo,
      required this.time,
      required this.backgColor,
      required this.buttonColor,
      required this.textColor,
      required this.buttonTextColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          //right: ScreenSize().dynamicWidth(.035),
          top: ScreenSize().dynamicHeight(.03),right: ScreenSize().dynamicWidth(.03)),
      child: Container(
        height: ScreenSize().dynamicHeight(.25),
        width: ScreenSize().dynamicWidth(.415),
        decoration: BoxDecoration(
          borderRadius: AppDecoration.borderRadius10,
          color: backgColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(ScreenSize().dynamicHeight(.015)).copyWith(
            top: 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenSize().dynamicWidth(.1),
                ),
                child: SvgPicture.asset(
                  svgSrc,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                titleOne,
                style: AppTextStyles.helveticaNeue18px700
                    .copyWith(color: textColor),
              ),
              Text(
                titleTwo,
                style: AppTextStyles.helveticaNeue11px400
                    .copyWith(color: textColor),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(right: ScreenSize().dynamicWidth(.05)),
                    child: Text(
                      time,
                      style: AppTextStyles.helveticaNeue11px400
                          .copyWith(color: AppColors.whiteColor),
                    ),
                  ),
                  Container(
                    height: ScreenSize().dynamicHeight(.047),
                    width: ScreenSize().dynamicWidth(.19),
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: AppDecoration.borderRadius25,
                    ),
                    child: Center(
                      child: Text(
                        'START',
                        style: AppTextStyles.helveticaNeue12px400
                            .copyWith(color: buttonTextColor),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      
    );
    
  }
}
