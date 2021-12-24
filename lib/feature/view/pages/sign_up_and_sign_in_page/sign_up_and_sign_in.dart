import 'package:flutter/material.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/utils/screen_size.dart';
import 'package:meditation_app/feature/view/pages/sign_up_and_sign_in_page/sign_up_and_sign_in_body.dart';

class SignUpAndSignIn extends StatelessWidget {
  const SignUpAndSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize().screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: AppColors.whiteColor,
      ),
      body:  const SignUpAndSignInBody(),
    );
  }
}
