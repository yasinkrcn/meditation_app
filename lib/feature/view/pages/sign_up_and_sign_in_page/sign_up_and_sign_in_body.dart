// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/core/constants/assets_paths.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/constants/theme/app_decoration.dart';
import 'package:meditation_app/core/constants/theme/app_text_styles.dart';
import 'package:meditation_app/core/utils/screen_size.dart';
import 'package:meditation_app/feature/view/pages/sign_in_page/sign_in.dart';

import 'package:meditation_app/feature/view/pages/sign_up_page/sign_up.dart';

class SignUpAndSignInBody extends StatelessWidget {
  const SignUpAndSignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize().screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: ScreenSize().dynamicHeight(.6),
            width: ScreenSize().dynamicWidth(1),
            child: Stack(
              children: [
                SvgPicture.asset(
                  AssetsPath().screen1SVG,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: ScreenSize().dynamicWidth(.05),
                      top: ScreenSize().dynamicHeight(.15)),
                  child: SvgPicture.asset(AssetsPath().human1SVG),
                ),
              ],
            ),
          ),
          Text('We are what we do', style: AppTextStyles.helveticaNeue30px700),
          SizedBox(
            height: 15,
          ),
          Text(
            'Thousand of people are using silent moon',
            style: AppTextStyles.helveticaNeue16px300
                .copyWith(color: AppColors.greyTextColor),
          ),
          Text(
            'for small meditation',
            style: AppTextStyles.helveticaNeue16px300
                .copyWith(color: AppColors.greyTextColor),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ),
                );
              },
              child: Container(
                height: ScreenSize().dynamicHeight(.075),
                width: ScreenSize().dynamicWidth(.85),
                decoration: BoxDecoration(
                  borderRadius: AppDecoration.borderRadius38,
                  color: AppColors.purpleButtonColor,
                ),
                child: Center(
                    child: Text(
                  'SIGN UP',
                  style: AppTextStyles.helveticaNeue14px400
                      .copyWith(color: AppColors.whiteColor),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                Text(
                  'ALREADY HAVE AN ACCOUNT? ',
                  style: AppTextStyles.helveticaNeue14px400
                      .copyWith(color: AppColors.greyTextColor),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
                  },
                  child: Text(
                    'LOG IN',
                    style: AppTextStyles.helveticaNeue14px400
                        .copyWith(color: AppColors.purpleButtonColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
