import 'package:flutter/material.dart';
import 'package:meditation_app/feature/homepage/view/widget/home_page_app_bar.dart';
import 'package:meditation_app/feature/homepage/view/widget/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  HomePageAppBar(),
      body: HomePageBody(),
    );
  }
}