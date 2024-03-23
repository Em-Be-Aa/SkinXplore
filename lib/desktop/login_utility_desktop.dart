// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace


import 'package:flutter/material.dart';

class LoginUtility extends StatelessWidget {
  const LoginUtility({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Column(children: [
                Expanded(
                    flex: 6,
                    child: Container(
                      width: 460,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/homepage');
                          },
                          child: Text(
                            "SkinXplore",
                            style: TextStyle(
                                color: Color(0xFF2C323F),
                                fontSize: 80,
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
                    )),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Container(
                      width: 530,
                      color: Colors.transparent,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          height: 1,
                          fontSize: 63,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Color(
                              0xFF2C323F), // Change this color to the desired text color
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 530,
                    color: Colors.transparent,
                    child: Text(
                      'Create your Account to get started',
                      style: TextStyle(
                        height: 1,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Color(
                            0xFF2C323F), // Change this color to the desired text color
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Container(
                      width: 430,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFACADB9),
                        borderRadius: BorderRadius.circular(
                            15.0), // Adjust the border radius as needed
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          hintText: "Your Full Name",
                          hintStyle: TextStyle(
                            color: Color(
                                0xFF2C323F), // Set the color of the hint text
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Container(
                      width: 430,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFACADB9),
                        borderRadius: BorderRadius.circular(
                            15.0), // Adjust the border radius as needed
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          hintText: "Your Email",
                          hintStyle: TextStyle(
                            color: Color(
                                0xFF2C323F), // Set the color of the hint text
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Container(
                      width: 430,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFACADB9),
                        borderRadius: BorderRadius.circular(
                            15.0), // Adjust the border radius as needed
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Color(
                                0xFF2C323F), // Set the color of the hint text
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Container(
                      width: 330,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color(0xFF2C323F),
                        borderRadius: BorderRadius.circular(
                            50.0), // Adjust the border radius as needed
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Poppins',
                              color: Color(
                                  0xFFE8E4EC), // Change this color to the desired text color
                            ),
                          )),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Not a member."
                  ),
                )
              ]),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                width: 500,
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF2C323F),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/login.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
