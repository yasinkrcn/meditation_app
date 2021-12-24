// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/core/constants/assets_paths.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/constants/theme/app_text_styles.dart';
import 'package:meditation_app/core/functions/remove_focus.dart';
import 'package:meditation_app/core/functions/show_toast.dart';
import 'package:meditation_app/core/shared_widgets/app_filled_button.dart';
import 'package:meditation_app/core/shared_widgets/app_text_field.dart';
import 'package:meditation_app/core/utils/screen_size.dart';
import 'package:meditation_app/feature/view/pages/welcome_page/welcome.dart';


class SignUpBody extends StatefulWidget {
  SignUpBody({Key? key}) : super(key: key);

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    ScreenSize().screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        removeFocus(context);
      },
      child: SingleChildScrollView(
        child: Stack(
          children: [
            SvgPicture.asset(AssetsPath().backgroundImageSVG),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(AssetsPath().backButtonSVG),
                  ),
                ),
                const Center(
                  child: Text(
                    'Create your account',
                    style: AppTextStyles.helveticaNeue28px700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: AppFilledButton(
                    buttonText: 'CONTINUE WITH FACEBOOK',
                    buttonSvgImage: AssetsPath().facebookSVG,
                    buttonColor: AppColors.purpleFacebookColor,
                    buttonTextColor: AppColors.whiteColor,
                  ),
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
                AppTextField(
                  hintText: 'Username',
                  suffixIcon: AssetsPath().tickSVG,
                ),
                AppTextField(
                  hintText: 'Email address',
                  suffixIcon: AssetsPath().tickSVG,
                ),
                AppTextField(
                  onTap: () => showToast(message: 'sdfsdfsdf'),
                  hintText: 'Password',
                  suffixIcon: AssetsPath().visibleSVG,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'I have read the ',
                                style: AppTextStyles.helveticaNeue14px400),
                            TextSpan(
                              text: 'Privace Policy',
                              style: AppTextStyles.helveticaNeue14px400
                                  .copyWith(color: AppColors.purpleButtonColor),
                            ),
                          ],
                        ),
                      ),
                      Checkbox(
                        value: checkbox,
                        onChanged: (value) {
                          setState(() {
                            checkbox = value!;
                          });
                        },
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Welcome(),
                      ),
                    );
                  },
                  child: AppFilledButton(
                    buttonText: 'GET STARTED',
                    buttonColor: AppColors.purpleButtonColor,
                    buttonTextColor: AppColors.whiteButtonColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
