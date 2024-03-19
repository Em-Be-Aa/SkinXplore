// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:skinxplore/constants/break_points.dart';
import 'package:skinxplore/desktop/home_utility_desktop.dart';
import 'package:skinxplore/mobile/home_utility_mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (screenWidth > mobileHeightBreak) {
          return HomeUtility();
        } else {
          return HomeUtilityMobile();
        }
      },
    );
  }
}
