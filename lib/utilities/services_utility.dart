// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ServicesUtility extends StatelessWidget {
  const ServicesUtility({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8E4EC),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  color: Colors.transparent,
                  width: 460,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                    },
                    child: Text(
                      "SkinXplore",
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF2C323F),
                          shadows: [
                            Shadow(
                              color: Colors.transparent,
                              blurRadius: 2.0,
                              offset: Offset(1.0, 1.0),
                            ),
                          ]),
                    ),
                  ),
                ),
              )),
          Expanded(
              flex: 6,
              child: Column(children: [
                Row(
                  children: [
                    SizedBox(
                      width: 55,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/detailexampage');
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent),
                      child: Container(
                        width: 600,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.transparent,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/images/Rectangle.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      width: 600,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.transparent,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/images/Rectangle1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ])),
          Expanded(flex: 6, child: Container()),
        ],
      ),
    );
  }
}
