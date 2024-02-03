// ignore_for_file: prefer_const_constructors
import 'dart:ui';
import 'package:flutter/material.dart';

class ServicesBottom extends StatefulWidget {
  const ServicesBottom({super.key});

  @override
  State<ServicesBottom> createState() => _ServicesBottomState();
}

class _ServicesBottomState extends State<ServicesBottom> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          width: screenWidth * 0.3,
          height: 410,
          color: Colors.transparent,
          child: Center(
            child: TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: ((context) => AlertDialog(
                        title: Text(
                          " Feature not Available.",
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
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(10),
                height: 350,
                width: screenWidth * 0.2,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('assets/images/history.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  width: screenWidth * 0.1,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFE8E4EC),
                  ),
                  child: Center(
                    child: Text(
                      "History",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C323F),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              width: screenWidth * 0.7,
              height: 410,
              color: Colors.transparent,
              child: Center(
                child: Container(
                  height: 350,
                  width: screenWidth * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('assets/images/services_image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4,
                    sigmaY: 4,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/detailexampage');
                    },
                    child: Container(
                      height: 100,
                      width: 300,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Detailed Examination",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C323F),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width:
                                50, // Adjust the size of the circle as needed
                            height:
                                50, // Adjust the size of the circle as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(
                                  0xFF136356), // Change the color of the circle as needed
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/arrow.png'),
                                    alignment: Alignment.center),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
