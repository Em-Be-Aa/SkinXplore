// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeUtility extends StatefulWidget {
  const HomeUtility({super.key});

  @override
  State<HomeUtility> createState() => _HomeUtilityState();
}

class _HomeUtilityState extends State<HomeUtility> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0XFFE8E4EC),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          width: 350,
          child: Row(
            children: [
              Container(
                height: 106,
                width: 105,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        alignment: Alignment.centerLeft)),
              ),
              Text(
                "SkinXplore",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )
            ],
          ),
        ),
        foregroundColor: Color(0xFF2C323F),
        backgroundColor: Colors.transparent,
        toolbarHeight: 90.0,
        elevation: 0.0,
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
            height: 5,
            width: 100,
            color: Colors.transparent, // Adjust the margin as needed
            child: TextButton(
              child: Text(
                "Services",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color(
                      0xFF2C323F), // Change this color to the desired text color
                ),
              ),
              onPressed: () {
                // Handle the s
                Navigator.pushNamed(context, '/servicespage');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
            height: 5,
            width: 100, // Adjust the margin as needed
            color: Colors.transparent,
            child: TextButton(
              child: Text(
                "Pricing",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color(
                      0xFF2C323F), // Change this color to the desired text color
                ),
              ),
              onPressed: () {
                // Handle the search button press
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
            height: 5,
            width: 100, // Adjust the margin as needed
            child: TextButton(
              child: Text(
                "Contact",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color(
                      0xFF2C323F), // Change this color to the desired text color
                ),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
            height: 5,
            width: 110, // Adjust the margin as needed
            child: TextButton(
              child: Text(
                "About Us",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color(
                      0xFF2C323F), // Change this color to the desired text color
                ),
              ),
              onPressed: () {
                // Handle the search button press
                Navigator.pushNamed(context, '/aboutpage');
              },
            ),
          ),
          SizedBox(
            width: screenWidth * 0.1,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 1.0),
              height: 50,
              width: 100, // Adjust the margin as needed
              decoration: BoxDecoration(
                color: Color(0xFF146356),
                borderRadius: BorderRadius.circular(30.0),
              ),

              child: TextButton(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    color: Color(
                        0xFFE8E4EC), // Change this color to the desired text color
                  ),
                ),
                onPressed: () {
                  // Handle the search button press
                  Navigator.pushNamed(context, '/loginpage');
                },
              ),
            ),
          ),
          Center(
            child: Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/sign_up.png'),
              )),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.02,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
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
                                fontSize: 85,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: Color(0xFF2C323F),
                                height: 0.9,
                                letterSpacing: -0.5,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "self diagnosis",
                              style: TextStyle(
                                fontSize: 85,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: Color(0xFF146356),
                                height: 0.9,
                                letterSpacing: -0.5,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "tool.",
                              style: TextStyle(
                                fontSize: 85,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: Color(0xFF2C323F),
                                height: 0.9,
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
                                ),
                                child: Material(
                                  elevation: 10,
                                  shadowColor: Colors.black,
                                  child: TextButton(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Learn More",
                                          style: TextStyle(
                                            fontSize: 25,
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
            ),
            Container(
              height: 1000,
              width: screenWidth,
              color: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
