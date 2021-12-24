// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/core/constants/assets_paths.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/constants/theme/app_text_styles.dart';
import 'package:meditation_app/core/shared_widgets/app_filled_button.dart';
import 'package:meditation_app/core/utils/screen_size.dart';
import 'package:meditation_app/feature/view/pages/choose_topic_page/choose_topic.dart';




class WelcomeBody extends StatelessWidget {
  const WelcomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize().screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
            bottom: 0,
            child: SvgPicture.asset(AssetsPath().backgroundImage2SVG)),
        Center(
          child: Column(
            children: [
              Text(
                'Hi Afsar, Welcome',
                style: AppTextStyles.helveticaNeue30px400
                    .copyWith(color: AppColors.yellowTextColor),
              ),
              Text(
                'to Silent Moon',
                style: AppTextStyles.helveticaNeue30px100
                    .copyWith(color: AppColors.yellowTextColor),
              ),
              Text(
                'Explore the app, Find some peace of mind to',
                style: AppTextStyles.helveticaNeue16px300
                    .copyWith(color: AppColors.whiteColor),
              ),
              Text(
                'prepare for meditation.',
                style: AppTextStyles.helveticaNeue16px300.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              SizedBox(
                height: 475,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChooseTopic(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: AppFilledButton(
                    buttonText: 'GET STARTED',
                    buttonColor: AppColors.backButtonColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
