// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutUtility extends StatelessWidget {
  const AboutUtility({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8E4EC),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: Colors.transparent,
                height: 70,
                width: 460,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
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
                                        onPressed: (){
                      Navigator.pushNamed(context, '/homepage');
                    },
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              height: 70,
              width: 460,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "About Us",
                  style:
                      TextStyle(fontSize: 40, fontFamily: 'Poppins', shadows: [
                    Shadow(
                      color: Colors.transparent,
                      blurRadius: 2.0,
                      offset: Offset(1.0, 1.0),
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              height: 70,
              width: 460,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Guiding Skin to Clarity",
                  style:
                      TextStyle(fontSize: 26, fontFamily: 'Poppins', shadows: [
                    Shadow(
                      color: Colors.transparent,
                      blurRadius: 2.0,
                      offset: Offset(1.0, 1.0),
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0XFF2C323F)),
                borderRadius: BorderRadius.circular(25),
                color: Color(0XFFD9D9D9),
              ),
            ),
            Row(children: [
              SizedBox(
                width: 400,
              ),
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white.withOpacity(0.4),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "The Team",
                    style: TextStyle(
                        fontSize: 55,
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
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0XFF2C323F)),
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0XFFD9D9D9),
                ),
              ),
            ]),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0XFF2C323F)),
                borderRadius: BorderRadius.circular(25),
                color: Color(0XFFD9D9D9),
              ),
            ),
            SizedBox(
              height: 400,
            ),
            Container(
              width: 900,
              height: 1000,
              color: Colors.transparent,
              child: Stack(children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 750,
                    height: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0XFF2C323F)),
                      borderRadius: BorderRadius.circular(1),
                      color: Color(0XFFD9D9D9),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 800,
                    height: 400,
                    color: Colors.transparent,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 750,
                        height: 400,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFF2C323F)),
                          borderRadius: BorderRadius.circular(1),
                          color: Color(0XFFD9D9D9),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: 250,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white.withOpacity(0.6),
                    ),
                    child: Text(
                      "About Company",
                      style: TextStyle(
                          fontSize: 50,
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
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
