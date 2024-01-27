// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class HomeUtility extends StatefulWidget {
  const HomeUtility({super.key});

  @override
  State<HomeUtility> createState() => _HomeUtilityState();
}

class _HomeUtilityState extends State<HomeUtility> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0XFFE8E4EC),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'SkinXplore',
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.transparent,
                  blurRadius: 2.0,
                  offset: Offset(1.0, 1.0),
                ),
              ]),
        ),
        foregroundColor: Color(0xFF2C323F),
        backgroundColor: Colors.transparent,
        toolbarHeight: 90.0,
        elevation: 0.0,
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            height: 5,
            width: 100, // Adjust the margin as needed
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
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            height: 5,
            width: 100, // Adjust the margin as needed
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
            margin: EdgeInsets.symmetric(horizontal: 20.0),
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
            margin: EdgeInsets.symmetric(horizontal: 20.0),
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
            width: 150,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 1.0),
              height: 50,
              width: 100, // Adjust the margin as needed
              decoration: BoxDecoration(
                color: Color(0xFF2C323F),
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
            width: 30,
          ),
        ],
      ),
      body: Row(
        children: [

          Expanded(
            flex: 5,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 150,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: 600,
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        'Your very own self diagnosis tool.',
                        style: TextStyle(
                          height: 1,
                          fontSize: 90,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Color(
                              0xFF2C323F), // Change this color to the desired text color
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Container(
                      width: 320,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF2C323F).withOpacity(0.9),
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Learn More',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Poppins',
                              color: Color(
                                  0XFFE8E4EC), // Change this color to the desired text color
                            ),
                          )),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage('assets/images/hom.png'),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
