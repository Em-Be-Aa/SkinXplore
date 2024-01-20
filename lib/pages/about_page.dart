// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:skinxplore/utilities/about_utility.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AboutUtility(),
    );
  }
}
