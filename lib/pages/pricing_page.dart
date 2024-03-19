// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:skinxplore/constants/break_points.dart';
import 'package:skinxplore/desktop/pricing_utility_desktop.dart';

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(whiteColor),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Color(whiteColor),
        title: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/homepage');
          },
          child: Container(
            height: 106,
            width: 105,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    alignment: Alignment.centerLeft)),
          ),
        ),
      ),
      body: PricingUtility(),
    );
  }
}
