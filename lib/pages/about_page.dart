// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:skinxplore/desktop/about_utility_desktop.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (screenWidth > 450) {
          return AboutUtility();
        } else {
          return Scaffold();
        }
      },
    );
  }
}
