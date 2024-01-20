// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import 'dart:ui';

class LearnMore extends StatelessWidget {
  const LearnMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        Container(
          color: Colors.red,
          width: 340,
          height: 80,
          child: Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 1,
                  sigmaY: 1,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Colors.white.withOpacity(0.4),
                      Colors.white.withOpacity(0.1),
                    ])),
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Learn More',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        color: Color(
                            0xFFE8E4EC), // Change this color to the desired text color
                      ),
                    )),
              ),
            ],
          ),
        ),
        Container(
          width: 340,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0XFFE8E4EC),
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    offset: Offset(-28, -28),
                    color: Colors.white,
                    inset: true),
                BoxShadow(
                  blurRadius: 20,
                  offset: Offset(20, 20),
                  color: Color(0X00000000),
                  inset: true,
                )
              ]),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Learn More',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  color:
                      Colors.red, // Change this color to the desired text color
                ),
              )),
        ),
      ],
    ));
  }
}
