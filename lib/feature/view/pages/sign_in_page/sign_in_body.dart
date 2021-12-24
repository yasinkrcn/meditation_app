// ignore_for_file: unused_element, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meditation_app/core/constants/assets_paths.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/constants/theme/app_decoration.dart';
import 'package:meditation_app/core/constants/theme/app_text_styles.dart';
import 'package:meditation_app/core/functions/remove_focus.dart';
import 'package:meditation_app/core/shared_widgets/app_filled_button.dart';
import 'package:meditation_app/core/shared_widgets/app_text_field.dart';
import 'package:meditation_app/core/utils/screen_size.dart';
import 'package:meditation_app/feature/view/pages/sign_up_page/sign_up.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize().screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        removeFocus(context);
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0).copyWith(bottom: 20),
                child: Container(
                    height: ScreenSize().dynamicHeight(.09),
                    width: ScreenSize().dynamicWidth(.18),
                    decoration: BoxDecoration(
                        borderRadius: AppDecoration.borderRadius38,
                        color: AppColors.whiteColor,
                        border: Border.all(color: AppColors.borderColor)),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
              ),
            ),
            const Center(
              child: Text(
                'Welcome Back!',
                style: AppTextStyles.helveticaNeue28px700,
              ),
            ),
            AppFilledButton(
              buttonText: 'CONTINUE WITH FACEBOOK',
              buttonSvgImage: AssetsPath().facebookSVG,
              buttonColor: AppColors.purpleFacebookColor,
              buttonTextColor: AppColors.whiteColor,
            ),
            AppFilledButton(
              buttonText: 'CONTINUE WITH GOOGLE',
              buttonSvgImage: AssetsPath().googleSVG,
            ),
            Center(
              child: Text(
                'OR LOG IN WITH EMAIL',
                style: AppTextStyles.helveticaNeue14px700
                    .copyWith(color: AppColors.greyColor),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            AppTextField(hintText: 'Email adress' ,suffixIcon: AssetsPath().tickSVG,),
            AppTextField(hintText : 'Password',suffixIcon: AssetsPath().visibleSVG,),
            GestureDetector(onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUp(),
                )
                    );
            },
              child: AppFilledButton(buttonText: 'LOG IN',
              buttonColor: AppColors.purpleButtonColor,
              buttonTextColor: AppColors.whiteColor,),
            ),
            SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'Forgot Password?',
                style: AppTextStyles.helveticaNeue14px400,
              ),
            ),
            SizedBox(
              height: 50,
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
                  GestureDetector(onTap: (){
                    Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUp(),
                )
                    );},
                    child: Text(
                      'LOG IN',
                      style: AppTextStyles.helveticaNeue14px400
                          .copyWith(color: AppColors.purpleButtonColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
