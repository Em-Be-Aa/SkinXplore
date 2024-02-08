// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:skinxplore/constants/break_points.dart';

class Collab extends StatelessWidget {
  const Collab({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 655,
      color: Colors.transparent,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text(
              "COLLABORATION",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color(blackColor),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            height: 200,
            width: screenWidth * 0.2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage('assets/images/sims_logo.png'),
                    alignment: Alignment.center),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            height: 30,
            width: screenWidth * 0.2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage('assets/images/sims.png'),
                    alignment: Alignment.center),
              ),
            ),
          ),
          SizedBox(
            height: 220,
          ),
          Container(
            height: 50,
            child: Text(
              'contact us',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(blackColor),
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.transparent,
                  height: 40,
                  width: 70,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage('assets/images/facebook.png'),
                          alignment: Alignment.center),
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  height: 40,
                  width: 70,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage('assets/images/mail.png'),
                          alignment: Alignment.center),
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  height: 40,
                  width: 70,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage('assets/images/Insta.png'),
                          alignment: Alignment.center),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
