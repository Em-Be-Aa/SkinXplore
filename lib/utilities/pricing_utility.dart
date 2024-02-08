// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skinxplore/constants/break_points.dart';

class PricingUtility extends StatelessWidget {
  const PricingUtility({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 130, top: 20),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "We've got a pricing plan",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    color: Color(blackColor)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 130),
            child: Container(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "that's ",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color(blackColor),
                        height: 0.94,
                      ),
                    ),
                    TextSpan(
                      text: "perfect ",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color(greenColor),
                        height: 0.94,
                      ),
                    ),
                    TextSpan(
                      text: "for ",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color(blackColor),
                        height: 0.94,
                      ),
                    ),
                    TextSpan(
                      text: "you.",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color(blackColor),
                        height: 0.94,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 130, top: 20),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "We believe SkinXplore should be available to everyone, no matter where.",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(blackColor)),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
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
                    height: 350,
                    width: 250,
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
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Basic',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(blackColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Free',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Color(blackColor),
                          ),
                        ),
                        Text(
                          'Free plan with no additional insights',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                            color: Color(blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        TextButton(
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
                          child: Container(
                            height: 45,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2)),
                            child: Center(
                              child: Text(
                                'Get started',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  color: Color(blackColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 35,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Container(
                    height: 350,
                    width: 250,
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
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Premium',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(blackColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Rs. 2000',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Color(blackColor),
                          ),
                        ),
                        Text(
                          'Our most popular plan.',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                            color: Color(blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        TextButton(
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
                          child: Container(
                            height: 45,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2)),
                            child: Center(
                              child: Text(
                                'Get started',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  color: Color(blackColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 35,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Container(
                    height: 350,
                    width: 250,
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
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Professional',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(blackColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Rs. 100k',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Color(blackColor),
                          ),
                        ),
                        Text(
                          'For healthcare professionals.',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                            color: Color(blackColor),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        TextButton(
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
                          child: Container(
                            height: 45,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 2)),
                            child: Center(
                              child: Text(
                                'Get started',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  color: Color(blackColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
