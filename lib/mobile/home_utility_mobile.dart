// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:skinxplore/constants/break_points.dart';
import 'package:skinxplore/mobile_utility_items/hero_section_mobile.dart';

class HomeUtilityMobile extends StatefulWidget {
  const HomeUtilityMobile({super.key});

  @override
  State<HomeUtilityMobile> createState() => _HomeUtilityMobileState();
}

class _HomeUtilityMobileState extends State<HomeUtilityMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(whiteColor),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "SkinXplore",
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(blackColor),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(whiteColor),
        elevation: 0,
        iconTheme: IconThemeData(color: Color(blackColor)),
      ),
      endDrawer: Drawer(
        width: 250,
        child: Container(
          color: Color(blackColor).withOpacity(1),
          child: ListView(
            children: [
              DrawerHeader(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 1.0),
                      height: 35,
                      width: 80, // Adjust the margin as needed
                      decoration: BoxDecoration(
                        color: Color(greenColor).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(30.0),
                      ),

                      child: TextButton(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w100,
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
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/sign_up.png'),
                      )),
                    ),
                  ),
                ],
              )),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Color(greenColor).withOpacity(0.7),
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(whiteColor),
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.medical_services,
                  color: Color(greenColor).withOpacity(0.7),
                ),
                title: Text(
                  "Services",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(whiteColor),
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.money,
                  color: Color(greenColor).withOpacity(0.7),
                ),
                title: Text(
                  "Pricing",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(whiteColor),
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.people,
                  color: Color(greenColor).withOpacity(0.7),
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(whiteColor),
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: HeroSectionMobile(),
    );
  }
}
