import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/feature/view/pages/choose_topic_page/choose_topic.dart';
import 'package:meditation_app/feature/view/pages/course_details_page/course_details.dart';
import 'package:meditation_app/feature/view/pages/home_page/home.dart';
import 'package:meditation_app/feature/view/pages/sign_up_and_sign_in_page/sign_up_and_sign_in_body.dart';
import 'core/constants/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: AppColors.whiteColor,
      title: 'Meditation App',
      home: CourseDetails(),
    );
  }
}
