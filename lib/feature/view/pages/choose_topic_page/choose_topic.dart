import 'package:flutter/material.dart';
import 'package:meditation_app/core/constants/theme/app_colors.dart';
import 'package:meditation_app/core/utils/screen_size.dart';
import 'choose_topic_body.dart';

class ChooseTopic extends StatelessWidget {
  const ChooseTopic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize().screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: const ChooseTopicBody(),
    );
  }
}
