// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skinxplore/constants/break_points.dart';

class WeeklyActivity extends StatelessWidget {
  const WeeklyActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                title: Text(
                  " Feature not available yet.",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: Color(0xFF136356),
                  ),
                ),
              )),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            height: 280,
            width: 420,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
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
            child: Column(
              children: [
                Text(
                  'A',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Color(blackColor),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(greenColor).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Text(
                          "S",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(blackColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color(greenColor).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Text(
                          "S",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(blackColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Color(greenColor).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Text(
                          "M",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(blackColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Color(greenColor).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Text(
                          "T",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(blackColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 174, 31, 21)
                                .withOpacity(0.8),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Text(
                          "W",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(blackColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Color(greenColor).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Text(
                          "T",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(blackColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Color(greenColor).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Text(
                          "F",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(blackColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
