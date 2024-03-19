// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_local_variable

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skinxplore/constants/break_points.dart';

class HeroSectionMobile extends StatefulWidget {
  const HeroSectionMobile({super.key});

  @override
  State<HeroSectionMobile> createState() => _HeroSectionMobileState();
}

class _HeroSectionMobileState extends State<HeroSectionMobile> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(whiteColor),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Container(
                height: screenHeight * 0.2,
                child: Column(
                  children: [
                    Text(
                      "Your very own",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          height: 0.1),
                    ),
                    Text(
                      "self diagnosis",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 35,
                          color: Color(greenColor),
                          fontWeight: FontWeight.bold,
                          height: 1.3),
                    ),
                    Text(
                      "tool.",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          height: 1.3),
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    color: Colors.transparent,
                    height: screenHeight * 0.5,
                    width: screenWidth * 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage('assets/images/hero_mobile.png'),
                            alignment: Alignment.center),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 10,
                              sigmaY: 10,
                            ),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 1.0),
                              height: 50,
                              width: 130, // Adjust the margin as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white.withOpacity(0.3),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                              ),
                              child: TextButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Learn More",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                            0xFF2C323F), // Change this color to the desired text color
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width:
                                          25, // Adjust the size of the circle as needed
                                      height:
                                          25, // Adjust the size of the circle as needed
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(
                                            0xFF136356), // Change the color of the circle as needed
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/arrow.png'),
                                              scale: 2,
                                              alignment: Alignment.center),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
