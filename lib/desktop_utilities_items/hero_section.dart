// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          height: 655,
          width: screenWidth * 0.7,
          color: Colors.transparent,
          child: Center(
            child: Container(
              height: 500,
              width: screenWidth * 0.5,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.transparent,
                    child: Text(
                      "Your very own",
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Color(0xFF2C323F),
                        height: 1.1,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "skin diagnosis",
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Color(0xFF146356),
                        height: 1.1,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "tool.",
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Color(0xFF2C323F),
                        height: 1.1,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 1.0),
                        height: 80,
                        width: 350, // Adjust the margin as needed
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 30,
                                color: Color(0xFF146356).withOpacity(0.5),
                                offset: Offset(15, 15),
                              ),
                              BoxShadow(
                                blurRadius: 50,
                                color: Colors.white,
                                offset: Offset(-28, -28),
                              )
                            ]),
                        child: Material(
                          elevation: 10,
                          shadowColor: Colors.black,
                          child: TextButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Learn More",
                                  style: TextStyle(
                                    fontSize: 29,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    color: Color(
                                        0xFF2C323F), // Change this color to the desired text color
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.05,
                                ),
                                Container(
                                  width:
                                      50, // Adjust the size of the circle as needed
                                  height:
                                      50, // Adjust the size of the circle as needed
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          color: Colors.transparent,
          height: 655,
          width: screenWidth * 0.2,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                  image: AssetImage('assets/images/hero_image.png'),
                  alignment: Alignment.center),
            ),
          ),
        ),
        Container(
          width: screenWidth * 0.1,
        )
      ],
    );
  }
}
