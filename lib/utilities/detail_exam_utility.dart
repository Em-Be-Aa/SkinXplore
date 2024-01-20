// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:skinxplore/utilities/image_class_backend.dart';

class DetailExamUtility extends StatelessWidget {
  const DetailExamUtility({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/black_back.png'),
              fit: BoxFit.cover,
            )),
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Align(
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
                                color: Color(0XFFE8E4EC),
                                shadows: [
                                  Shadow(
                                    color: Colors.transparent,
                                    blurRadius: 2.0,
                                    offset: Offset(1.0, 1.0),
                                  ),
                                ]),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/homepage');
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 1050,
                  color: Colors.transparent,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      color: Colors.transparent,
                      height: 70,
                      width: 460,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Dashboard",
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Color(0XFFE8E4EC),
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
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: 1050,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        color: Colors.transparent,
                        height: 100,
                        width: 800,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Welcome Back",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'Poppins',
                                      color: Color(0XFFE8E4EC),
                                      shadows: [
                                        Shadow(
                                          color: Colors.transparent,
                                          blurRadius: 2.0,
                                          offset: Offset(1.0, 1.0),
                                        ),
                                      ]),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Muhammad Bin Abdullah",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFFE8E4EC),
                                      shadows: [
                                        Shadow(
                                          color: Colors.transparent,
                                          blurRadius: 2.0,
                                          offset: Offset(1.0, 1.0),
                                        ),
                                      ]),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Your diagnosis results are ready to be explored - Learn more",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      color: Color(0XFFE8E4EC),
                                      shadows: [
                                        Shadow(
                                          color: Colors.transparent,
                                          blurRadius: 2.0,
                                          offset: Offset(1.0, 1.0),
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    SizedBox(
                      width: 170,
                    ),
                    Container(
                      width: 500,
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 500,
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
          MyHomePage(),
        ],
      ),
    );
  }
}
