// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:skinxplore/utilities/home_utility.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.red,
          child: Positioned(
            left: 0,
            top: 80,
            child: Container(
              height: 700,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage('assets/images/Ellipse.png'),
                ),
              ),
            ),
          ),
        ),
        HomeUtility(),
      ]),
    );
  }
}
