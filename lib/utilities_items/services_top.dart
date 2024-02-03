// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'dart:ui';


class ServicesTop extends StatelessWidget {
  const ServicesTop({super.key});

  @override
  Widget build(BuildContext context) {

    
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Container(
          height: 220,
          color: Colors.transparent,
          child: Row(
            children: [
              Container(
                width: screenWidth * 0.6,
                color: Colors.transparent,
                child: Center(
                  child: Container(
                    color: Colors.transparent,
                    width: screenWidth * 0.5,
                    height: 200,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Be your own skin detective.",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C323F),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Scan ",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF146356),
                                  ),
                                ),
                                TextSpan(
                                  text: "track ",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF146356),
                                  ),
                                ),
                                TextSpan(
                                  text: "and ",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2C323F),
                                  ),
                                ),
                                TextSpan(
                                  text: "empower",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF146356),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "your skin health.",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C323F),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: screenWidth * 0.4,
                color: Colors.transparent,
                child: Container(
                  width: screenWidth * 0.4,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/services_image.png'),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 10,
                              sigmaY: 10,
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/detailexampage');
                              },
                              child: Container(
                                height: 200,
                                width: 300,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
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
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Scan in an instant",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF2C323F),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Container(
                                        width: 200,
                                        child: Text(
                                          "Your results are just a click away from you.",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            color: Color(0xFF2C323F),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
  }
}