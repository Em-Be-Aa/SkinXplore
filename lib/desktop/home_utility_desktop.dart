// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:skinxplore/constants/break_points.dart';
import 'package:skinxplore/desktop_utilities_items/collaborations.dart';
import 'package:skinxplore/desktop_utilities_items/hero_section.dart';
import 'package:skinxplore/desktop_utilities_items/home_services.dart';

class HomeUtility extends StatefulWidget {
  const HomeUtility({super.key});

  @override
  State<HomeUtility> createState() => _HomeUtilityState();
}

class _HomeUtilityState extends State<HomeUtility> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0XFFE8E4EC),
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          width: screenWidth * 0.25,
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
                    fontSize: screenWidth * 0.02,
                    color: Color(blackColor)),
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
                Navigator.pushNamed(
                    context, '/pricingpage'); // Handle the search button press
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
            HeroSection(),
            HomeServices(),
            Collab(),
          ],
        ),
      ),
    );
  }
}
