// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:skinxplore/constants/break_points.dart';

class HomeServices extends StatelessWidget {
  const HomeServices({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          height: 655,
          width: screenWidth * 0.4,
          child: Center(
            child: Container(
              height: 400,
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    color: Colors.transparent,
                    child: Text(
                      "OUR SERVICES",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF146356),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "WHAT CAN WE DO",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 50,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        color: Color(blackColor),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "FOR YOU",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color(blackColor),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Cross Platform availabilty for users,",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        height: 2,
                        letterSpacing: -0.5,
                        color: Color(blackColor),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "healthcare professionals and",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        letterSpacing: -0.5,
                        color: Color(blackColor),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "organizations.",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        letterSpacing: -0.5,
                        color: Color(blackColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 655,
          width: screenWidth * 0.6,
          color: Color(0xFFE8E4EC),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  width: 500,
                  height: 160,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Color(0xFFE8E4EC),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: Offset(3, 3),
                        blurRadius: 7,
                        spreadRadius: 2,
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        offset: Offset(-3, -3),
                        blurRadius: 7,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/self_exam.png'),
                                  alignment: Alignment.topLeft),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Self Examination",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(blackColor),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Get insights from your images from your camera or storage.",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 17,
                                    height: 1.2,
                                    color: Color(blackColor),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: 500,
                  height: 160,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Color(0xFFE8E4EC),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: Offset(3, 3),
                        blurRadius: 7,
                        spreadRadius: 2,
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        offset: Offset(-3, -3),
                        blurRadius: 7,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/chatbot.png'),
                                  alignment: Alignment.topLeft),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "ChatBot Explanations",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(blackColor),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Get results explanations, future recommendations and help with a friendly chatbot.",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 17,
                                    height: 1.2,
                                    color: Color(blackColor),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: 500,
                  height: 160,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Color(0xFFE8E4EC),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        offset: Offset(3, 3),
                        blurRadius: 7,
                        spreadRadius: 2,
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        offset: Offset(-3, -3),
                        blurRadius: 7,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/tracking.png'),
                                  alignment: Alignment.topLeft),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Tracking History",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(blackColor),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Maintain and track your lesion history and results.",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 17,
                                    height: 1.2,
                                    color: Color(blackColor),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
